using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Xoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<objects.ProductOfUser> giohang;            
            giohang = (List<objects.ProductOfUser>)Application["giohang"];
            string id = Request.QueryString["id"];
            foreach (objects.ProductOfUser i in giohang.ToList())
            {
                if (i.id == id)
                {
                    giohang.Remove(i);
                }
            }
            Application["giohang"] = giohang;
            Response.Redirect("Giohang.aspx");
        }
    }
}