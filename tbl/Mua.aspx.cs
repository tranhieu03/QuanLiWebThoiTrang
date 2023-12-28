using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Mua : System.Web.UI.Page
    {
        List<objects.ProductOfUser> giohang;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            usernamelogout.Style.Add("display", "inline");
            username.InnerText = (string)Session["username"];
            loginregister.Style.Add("display", "none");
            giohang = (List<objects.ProductOfUser>)Application["giohang"];
            email = (string)Session["email"];

            foreach (objects.ProductOfUser i in giohang.ToList())
            {
                if (i.Email == email)
                {
                    giohang.Remove(i);
                }
            }
            Application["giohang"] = giohang;
        }
    }
}