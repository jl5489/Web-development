using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupASS
{
    public partial class Library : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TeamsDatabase"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["TeamsDatabase"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Payment.Username,Payment.GameID,Games.GameID,Games.Name,Games.CategoryID,Games.Image,Games.Description,Categories.CategoryID,Categories.CategoryName FROM Payment INNER JOIN Games ON Payment.GameID = Games.GameID INNER JOIN Categories ON Games.CategoryID = Categories.CategoryID", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;

                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            dltLibrary.DataSource = dt;
                            dltLibrary.DataBind();
                        }

                    }
                }
            }
        }


    }
  
}
    
