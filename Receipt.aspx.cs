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
    public partial class Receipt : System.Web.UI.Page
    {
        private decimal totalPrice = 0;
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
                using (SqlCommand cmd = new SqlCommand("SELECT PaymentID, Username, [Payment].GameID, Method, Name, Price FROM [Payment] INNER JOIN [Games] ON [Payment].GameID = [Games].GameID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;

                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            grvReceipt.DataSource = dt;
                            grvReceipt.DataBind();
                        }

                    }
                }
            }
        }

        protected void grvReceipt_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Access the value in the Price column for each row
                decimal price = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));

                // Add the price to the total
                totalPrice += price;
            }

            // Check if the current row is the footer row
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                // Display the total price in the footer
                e.Row.Cells[1].Text = "Total:";
                e.Row.Cells[2].Text = totalPrice.ToString("c");

                // Display the total price in the Label
                lblTotalPrice.Text = "Total Amount: " + totalPrice.ToString("c");
            }

            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string username = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Username"));
                lblUser.Text = "Username: " + username;

                // Access the value in the Method column for each row
                string paymentMethod = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Method"));

                // Add the payment method to the Label
                lblMethod.Text = "Payment Method: " + paymentMethod;
            }
        }
    }
}