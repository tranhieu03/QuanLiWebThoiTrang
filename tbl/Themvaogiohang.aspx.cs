using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Themvaogiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["username"] != null)
            {
                string idsp = Request.QueryString["id"];
                string email = (string)Session["email"];

                List<objects.Product> listProduct = (List<objects.Product>)Application["listProduct"];

                List<objects.ProductOfUser> giohang = (List<objects.ProductOfUser>)Application["giohang"];


                foreach (objects.Product i in listProduct)
                {
                    if (i.id == idsp)
                    {
                        giohang.Add(new objects.ProductOfUser(giohang.Count + DateTime.Now.ToString(), i, email));
                        break;
                    }
                }
                Application["giohang"] = giohang;
                Response.Redirect("Giohang.aspx");
            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
        }
    }
}