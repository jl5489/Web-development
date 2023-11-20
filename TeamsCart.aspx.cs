using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labexw2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["TeamsDatabaseConnString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT CartlistID, [Cartlist].GameID, FROM [Cartlist] INNER JOIN [Games] ON [CartList].GameID = [Games].GameID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            grvItem.DataSource = dt;
                            grvItem.DataBind();
                        }
                    }
                }
            }
        }
    }
}