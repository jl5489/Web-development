using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupASS
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlMethod_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMethod.SelectedIndex == 3)
            {
                lblTNG.Text = "If your billing address is not in Malaysia, please set your store region preference";
                lblTNG.ForeColor = System.Drawing.Color.Red;
                lblTNG.BackColor = System.Drawing.Color.Yellow;

                txtCard.Enabled = false;
                ddlExpMonth.Enabled = false;
                ddlExpYear.Enabled = false;
                txtCode.Enabled = false;
                txtFirstName.Enabled = false;
                txtLastName.Enabled = false;
                txtCity.Enabled = false;
                txtAddress.Enabled = false;
                txtPoscode.Enabled = false;
                ddlCountry.Enabled = false;
                txtPhone.Enabled = false;
                cbxSave.Enabled = false;
            }

        }

        protected void ibtnCard_Click(object sender, ImageClickEventArgs e)
        {
            ddlMethod.SelectedIndex = 1;
        }

        protected void ibtnMasterCard_Click(object sender, ImageClickEventArgs e)
        {
            ddlMethod.SelectedIndex = 2;
        }

        protected void ibtnTouchnGo_Click(object sender, ImageClickEventArgs e)
        {
            ddlMethod.SelectedIndex = 3;
            lblTNG.Text = "If your billing address is not in Malaysia, please set your store region preference";
            lblTNG.ForeColor = System.Drawing.Color.Red;
            lblTNG.BackColor = System.Drawing.Color.Yellow;

            txtCard.Enabled = false;
            ddlExpMonth.Enabled = false;
            ddlExpYear.Enabled = false;
            txtCode.Enabled = false;
            txtFirstName.Enabled = false;
            txtLastName.Enabled = false;
            txtCity.Enabled = false;
            txtAddress.Enabled = false;
            txtPoscode.Enabled = false;
            ddlCountry.Enabled = false;
            txtPhone.Enabled = false;
            cbxSave.Enabled = false;
        }

    }
}