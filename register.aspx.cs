using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnSubmit.Enabled = false;
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int a = 0;
            using(SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TeamsDatabaseConnString"].ConnectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("INSERT INTO [User] (Username, Password, Name, IC, Phone, Image, isAdmin) VALUES (@Uname, @pwd, @name, @ic, @phone, @image, @a)", conn))
                {
                cmd.Parameters.AddWithValue("@Uname", txtUname.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@ic", txtIc.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@image", txtImage.Text);
                cmd.Parameters.AddWithValue("@a", a);
                int rowsAffected = cmd.ExecuteNonQuery();
                    //Response.Write("<script>alert('Register successfully!');</script>");
                    if (rowsAffected > 0)
                    {
                        // Successful registration
                        Response.Write("<script>alert('Register successfully!');</script>");
                    }
                    else
                    {
                        // Registration failed
                        Response.Write("<script>alert('Registration failed!');</script>");
                    }
                }
                    
                
                conn.Close();
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void cbxTerm_CheckedChanged(object sender, EventArgs e)
        {
            
            if(cbxTerm.Checked)
            {
                btnSubmit.Enabled = true;
            }
            else
            {
                btnSubmit.Enabled = false;
            }
        }
    }
}