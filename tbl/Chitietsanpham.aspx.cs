using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Chitietsanpham : System.Web.UI.Page
    {
        List<objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["username"] != null)
            {
                usernamelogout.Style.Add("display", "inline");
                username.InnerText = (string)Session["username"];
                loginregister.Style.Add("display", "none");
            }

            listUser = (List<objects.User>)Application["listUser"];

            List<objects.Product> productList = (List<objects.Product>)Application["listProduct"];
            string tr = "";

            foreach (objects.Product i in productList)
            {
                if (Request.QueryString["IdProduct"] == i.id)
                {
                    tr += "<img src='" + i.img + "' class='infor-product'/>"
                        + "<div class='infor-product'>"
                            + "<h3 style='font-family: Roboto, sans-serif; margin-top: 10px;' >" + i.name + "</h3>"
                            + "<h4 style='font-family: Roboto, sans-serif; margin-top: 40px;' >Trạng thái: Còn hàng</h4>"
                            + "<h4 style='font-family: Roboto, sans-serif; margin-top: 10px;'>" + i.price + "đ</h4>"
                            + "<a class='btn-add-to-cart' style='font-family: Roboto, sans-serif;' href='Themvaogiohang.aspx?id=" + i.id + "'>Thêm vào giỏ hàng</a>"
                        + "</div>"
                        + "<h3 style='font-family: Roboto, sans-serif; margin-top: 40px; '>Mô tả</h3>"
                        + "<p style='margin-top: 10px; '>" + i.detail + "</p>";
                    break;
                }
            }
            detailproduct.InnerHtml = tr;
        }
    }
}