using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupASS
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                lblNotice.Text = "Validation failed! Please check your data entry.";
                lblNotice.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblNotice.Text = "Validation passed! You will receive a reply within 3 working days.";
                lblNotice.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}