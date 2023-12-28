using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Xoasanpham : System.Web.UI.Page
    {
        List<objects.Product> dsSanpham;
        protected void Page_Load(object sender, EventArgs e)
        {
            dsSanpham = (List<objects.Product>)Application["listProduct"];
            string id = Request.QueryString["IdProduct"];
            foreach(objects.Product i in dsSanpham.ToList())
            {
                if(i.id == id)
                {
                    dsSanpham.Remove(i);
                }
            }
            Response.Redirect("Sanpham.aspx");
        }
    }
}