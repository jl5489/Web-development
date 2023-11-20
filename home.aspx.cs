using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace groupassignment
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void imbCatelistAc_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Category.aspx?IDCAT=c1");
        }
    }
}