using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Index : System.Web.UI.Page
    {
        List<objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["username"] != null)
            {
                usernamelogout.Style.Add("display", "inline");
                username.InnerHtml = (string)Session["username"];
                loginregister.Style.Add("display", "none");
            }

            listUser = (List<objects.User>)Application["listUser"];


            List<objects.Product> dsSanPham = (List<objects.Product>)Application["listProduct"];
            int dem = 0;
            string tr = "";
            foreach (objects.Product item in dsSanPham)
            {
                tr += "<div class='product-item'>"
                        + "<a href='/ChiTietSanPham.aspx?IdProduct=" + item.id + "'><img src='" + item.img + "' alt='loi anh'></a>"
                        + "<span class='product-name'>" + item.name + "</span>"
                        + "<br>"
                        + "<span class='price'>" + item.price + "đ</span>"
                    + "</div>";
                dem++;
                if (dem == 6) break;
            }
            products.InnerHtml = tr;
        }
    }
}