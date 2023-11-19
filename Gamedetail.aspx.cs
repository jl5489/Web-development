using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace groupassignment
{
    public partial class Gamedetail : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TeamsConnString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn.Open();
                string IDGa = Request.QueryString["IDGa"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM [Games] WHERE GameID = '"+ IDGa +"'", conn);
                SqlDataAdapter sda = new SqlDataAdapter();
                {
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        if (IDGa != null)
                        {
                            sda.Fill(dt);
                            dltGame.DataSource = dt;
                            dltGame.DataBind();
                        }
                    }
                }

            }
        }
}