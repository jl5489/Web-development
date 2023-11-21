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

        protected void imbAdverList1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gamedetail.aspx?IDGa=g0001" );

        }

        protected void imbAdverList2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gamedetail.aspx?IDGa=g0001");
        }

        protected void imbAdverList3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gamedetail.aspx?IDGa=g0001");
        }

        protected void imbAdverList4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gamedetail.aspx?IDGa=g0002");
        }

        protected void imbAdverList5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gamedetail.aspx?IDGa=g0003");
        }

        protected void imbCatelistAdv_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Category.aspx?IDCAT=c5");
        }

        protected void imbCatelistHorror_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Category.aspx?IDCAT=c2");
        }

        protected void imbCatelistSimu_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Category.aspx?IDCAT=c6");

        }

        protected void imbCatelistSport_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Category.aspx?IDCAT=c4");

        }

        protected void imbCatelistStra_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Category.aspx?IDCAT=c3");

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM[Games] WHERE Name=@ganame", conn);
            cmd.Parameters.AddWithValue("ganame", txtSearch.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read();

            if (recordfound)
            {
                String GaID = dr["GameID"].ToString();
                Response.Redirect("~/Gamedetail.aspx?IDGa=GaID");
            }
            else
            {

                lblResult.Text = "No record found...";
                lblResult.ForeColor = System.Drawing.Color.Red;

            }
            conn.Close();
        }
    }
}
    
