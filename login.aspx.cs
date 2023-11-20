using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labexw2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
             {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TeamsDatabaseConnString"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM [User] WHERE Username=@Uname AND Password = @pwd", conn);
                cmd.Parameters.AddWithValue("@Uname", txtUname.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
                SqlDataReader rdr = cmd.ExecuteReader();

                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        Session["UserName"] = rdr["Username"].ToString();
                        int userRole = Convert.ToInt16(rdr["isAdmin"].ToString());

                        switch (userRole)
                        {
                            case 0:
                                //Response.Redirect("~/SimpleGridView.aspx");
                                lblMessage.Text = "user";
                                break;
                            case 1:
                                //Response.Redirect("~/EditCategory.aspx");
                                lblMessage.Text = "admin";
                                break;

                        }
                    }
                }
                else
                {
                    lblMessage.Text = "Username and / or password not found.";
                }
            conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gamedetail.aspx");
        }
    }
}