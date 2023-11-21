using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace groupassignment
{
    public partial class EditGames : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TeamsConnString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tabResult.Visible = false;
                imgProdPhoto.Visible = false;
                imgAD.Visible = false;
                lbtnCancel.Visible = false;
                lbtnCancel1.Visible = false;
                lbtnProdPhoto.Visible = false;
                lbtnAD.Visible = false;
                btnUpdate.Visible = false;
                btnDelete.Visible = false;
            }
        }
        public void Clear()
        {
            txtGameID.Text = txtName.Text = txtPrice.Text = txtSearch.Text = txtDesc.Text = "";
            lblResult.Text = lblUploadStatus.Text = lblUploadStatus1.Text = "";
            imgProdPhoto.ImageUrl = imgAD.ImageUrl = "";
            imgProdPhoto.Visible = false;
            imgAD.Visible = false;
            ddlCate.SelectedIndex = 0;
            txtGameID.Enabled = true;
            btnUpdate.Visible = false;
            btnDelete.Visible = false;
            btnSave.Visible = true;
            lbtnProdPhoto.Visible = false;
            lbtnAD.Visible = false;
            fiuImage.Visible = true;
            fiuAD.Visible = true;
            lbtnCancel.Visible = false;
            lbtnCancel1.Visible = false;
            lbHeader.Text = "Add new Record";
            tabEditing.Visible = true;

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM[Games] WHERE GameID=@GameId", conn);
            cmd.Parameters.AddWithValue("GameId", txtSearch.Text);

            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read();

            if (recordfound)
            {
                tabResult.Visible = true;
                tabEditing.Visible = false;
                lblResult.Text = "Record found!";
                lblResult.ForeColor = System.Drawing.Color.Green;
                lbHeader.Text = "Record Details";
                lblGameID.Text = dr["GameID"].ToString();
                lblName.Text = dr["Name"].ToString();
                lblPrice.Text = string.Format("{0:c}", dr["Price"]);
                imgGame.ImageUrl = "~/TeamsImages/" + dr["Image"].ToString();
                lblDesc.Text = dr["Description"].ToString();
                imgDisplay.ImageUrl = "~/TeamsImages/" + dr["Ad"].ToString();
            }
            else
            {
                tabResult.Visible = false;
                lblResult.Text = "No record found...";
                lblResult.ForeColor = System.Drawing.Color.White;
                lblResult.BackColor = System.Drawing.Color.Red;
                tabResult.Visible = false;
            }
            conn.Close();
        }

        public void uploadFile()
        {
            string filename;
            string filename1;
            if (fiuImage.HasFile)
            {
                try
                {
                    filename = System.IO.Path.GetFileName(fiuImage.PostedFile.FileName);
                    fiuImage.PostedFile.SaveAs(Server.MapPath("~/TeamsImages/" + fiuImage.FileName));
                    lblUploadStatus.Text = filename + "uploaded.";
                    lblFileName.Text = filename;
                }
                catch
                {
                    lblUploadStatus.Text = "Unable to save file";
                }
            }
            else
            {
                lblUploadStatus.Text = "No file selected";
            }
            if (fiuAD.HasFile)
            {
                try
                {
                    filename1 = System.IO.Path.GetFileName(fiuAD.PostedFile.FileName);
                    fiuImage.PostedFile.SaveAs(Server.MapPath("~/TeamsImages/" + fiuAD.FileName));
                    lblUploadStatus1.Text = filename1 + "uploaded.";
                    lblFilename1.Text = filename1;
                }
                catch
                {
                    lblUploadStatus1.Text = "Unable to save file";
                }
            }
            else
            {
                lblUploadStatus1.Text = "No file selected";

            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            uploadFile();

            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                    string insertQuery = "INSERT INTO Games(GameID,Name,Description,"+"CategoryID,Image,Price,Ad)" + "values(@gaID,@gaName,@gaDes,@catID,@filename,@price,@Adver)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("gaID", txtGameID.Text);
                    com.Parameters.AddWithValue("gaName", txtName.Text);
                    com.Parameters.AddWithValue("gaDes", txtDesc.Text);
                    com.Parameters.AddWithValue("catID", ddlCate.SelectedValue);
                    com.Parameters.AddWithValue("@filename", lblFileName.Text);
                    com.Parameters.AddWithValue("@price", txtPrice.Text);
                    com.Parameters.AddWithValue("@Adver", lblFilename1.Text);

                    com.ExecuteNonQuery();
                    Response.Write("<script>alert('New Product added successfully!');</script>");
                    conn.Close();
                    Clear();
                }
            }
            catch (Exception ex)
            {
                lblResult.Text = "Error:" + ex.ToString();
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM[Games] WHERE GameID=@GameId", conn);
            cmd.Parameters.AddWithValue("GameId", txtSearch.Text);

            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read();

            if (recordfound)
            {
                lbHeader.Text = "Update Record";
                txtGameID.Text = dr["GameID"].ToString();
                txtGameID.Enabled = false;
                txtName.Text = dr["Name"].ToString();
                txtPrice.Text = string.Format("{0:c}", dr["Price"]);
                lblFileName.Text = dr["Image"].ToString();
                lblFilename1.Text = dr["Ad"].ToString();
                ddlCate.SelectedValue = dr["CategoryID"].ToString();
                imgGame.ImageUrl = "~/TeamsImages/" + dr["Image"].ToString();
                imgDisplay.ImageUrl = "~/TeamsImages/" + dr["Ad"].ToString();
                txtDesc.Text = dr["Description"].ToString();
            }

            tabResult.Visible = false;
            tabEditing.Visible = true;
            btnSave.Visible = false;
            btnUpdate.Visible = true;
            btnDelete.Visible = true;
            btnClear.Visible = true;
            imgProdPhoto.Visible = true;
            imgAD.Visible = true;
            lbtnAD.Visible = true;
            lbtnProdPhoto.Visible = true;
            fiuImage.Visible = false;
            fiuAD.Visible = false;
            conn.Close();

        }
    

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            uploadFile();

            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                string updateQuery = "UPDATE Games SET Name=@name,Description=@Des," + "CategoryID=@catID,Image=@filename,Price=@price,Ad=@adver WHERE GameID=@Id";
                SqlCommand com = new SqlCommand(updateQuery, conn);
                {
                    //@shortName, @longName, @Id
                    com.Parameters.AddWithValue("@Id", txtGameID.Text);
                    com.Parameters.AddWithValue("@name", txtName.Text);
                    com.Parameters.AddWithValue("@Des", txtDesc.Text);
                    com.Parameters.AddWithValue("@catID", ddlCate.SelectedValue);
                    com.Parameters.AddWithValue("@filename", lblFileName.Text);
                    com.Parameters.AddWithValue("@price", txtPrice.Text);
                    com.Parameters.AddWithValue("@adver", lblFilename1.Text);

                    com.ExecuteNonQuery();
                }
                Response.Write("<script>alert('Record Updated Successfully!');</script>");
                com.Dispose();
                conn.Close();
                Clear();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM Games WHERE GameID=@Id", conn))
                    {
                        cmd.Parameters.AddWithValue("Id", txtGameID.Text);
                        int rows = cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Record Deleted Successfully...')</script>");
                        conn.Close();
                        Clear();
                    }
                }

                catch (SqlException ex)
                {
                    lblResult.Text = "Error found: " + ex.Message;
                    lblResult.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void lbtnProdPhoto_Click(object sender, EventArgs e)
        {
            fiuImage.Visible = true;
            fiuAD.Visible = true;
            imgProdPhoto.Visible = true;
            imgAD.Visible = true;
            lbtnProdPhoto.Visible = false;
            lbtnAD.Visible = false;
            lbtnCancel.Visible = true;
            lbtnCancel1.Visible = true;
        }

        protected void lbtnCancel_Click(object sender, EventArgs e)
        {
            fiuImage.Visible = false;
            fiuAD.Visible = false;
            imgAD.Visible = true;
            imgProdPhoto.Visible = true;
            lbtnProdPhoto.Visible = true;
            lbtnAD.Visible = true; 
            lbtnCancel1.Visible = false;
            lbtnCancel.Visible = false;

            Clear();
        }
    }
}
