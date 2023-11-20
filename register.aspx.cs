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
    public partial class register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnSubmit.Enabled = false;
                //fiuImage.Enabled = false;
                txtPwd.Attributes["type"] = "password";
                txtCpwd.Attributes["type"] = "password";
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int a = 0;
            //if (cbxImage.Checked == true)
            //{
            //    if (fiuImage.HasFile)
            //    {
            //        try
            //        {
            //            if (fiuImage.PostedFile.ContentType == "image/jpeg" || fiuImage.PostedFile.ContentType == "image/jpg" || fiuImage.PostedFile.ContentType == "image/png")
            //            {
            //                if (fiuImage.PostedFile.ContentLength < 2100000)
            //                {
            //                    String strPath = Request.PhysicalApplicationPath + "images\\TeamsImage\\" + fiuImage.FileName;
            //                    fiuImage.SaveAs(strPath);
            //                    lblMessage.ForeColor = System.Drawing.Color.DarkSeaGreen;
            //                    lblMessage.Text = "Image was successfully uploaded.";
            //                }

            //                else
            //                {
            //                    lblMessage.ForeColor = System.Drawing.Color.Red;
            //                    lblMessage.Text = "The file has to be less than 2MB";
            //                }
            //            }

            //            else
            //            {
            //                lblMessage.ForeColor = System.Drawing.Color.Red;
            //                lblMessage.Text = "Only JPEG, JPG and PNG files are accepted!";
            //            }
            //        }
            //        catch (Exception ex)
            //        {
            //            lblMessage.ForeColor = System.Drawing.Color.Red;
            //            lblMessage.Text = "Upload Status: File could not be uploaded. The following error occured: " + ex.Message;
            //        }

            //    }

            //    else
            //    {
            //        lblMessage.ForeColor = System.Drawing.Color.Red;
            //        lblMessage.Text = "No image file selected. Please select an image file and try again.";
            //    }
            //}

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TeamsDatabaseConnString"].ConnectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("INSERT INTO [User] (Username, Password, Name, IC, Phone, isAdmin) VALUES (@Uname, @pwd, @name, @ic, @phone, @a)", conn))
                {
                cmd.Parameters.AddWithValue("@Uname", txtUname.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@ic", txtIc.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                //cmd.Parameters.AddWithValue("@image", fiuImage.FileName);
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

        //protected void cbxImage_CheckedChanged(object sender, EventArgs e)
        //{
        //    if(cbxImage.Checked)
        //    {
        //        fiuImage.Enabled = true;
        //    }
        //    else
        //    {
        //        fiuImage.Enabled= false;
        //    }
        //}
    }
}