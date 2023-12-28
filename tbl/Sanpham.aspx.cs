using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Sanpham : System.Web.UI.Page
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
           if((string)Session["username"] != "admin")
            {
                addProduct.Style.Add("display", "none");
            }
            listUser = (List<objects.User>)Application["listUser"];

            List<objects.Product> dsSanPham = (List<objects.Product>)Application["listProduct"];
            string tr = "";

            if (Request.QueryString["type"] == null)
            {
                foreach (objects.Product item in dsSanPham)
                {
                    tr += "<div class='product-item-p' >"
                            + "<a href='/ChiTietSanPham.aspx?IdProduct=" + item.id + "'><img  src='" + item.img + "' alt='loi anh'></a>"
                            + "<span class='product-name'>" + item.name + "</span>"
                            + "<br>"
                            + "<span class='price'>" + item.price + "</span>";
                    if ((string)Session["email"] == "admin")
                    {
                        tr += $"<a  href=\"Xoasanpham.aspx?IdProduct={item.id}\" style=\"text-decoration: none; padding-left: 50%;\">Xóa </a>"
                           + "</div>";
                    }
                    else
                    {
                        tr += "</div>";
                    }
                }
            }
            else
            {
                if (Request.QueryString["type"] == "1")
                {
                    foreach (objects.Product item in dsSanPham)
                    {
                        if (item.type == "1")
                        {
                            tr += "<div class='product-item-p'>"
                                + "<a href='/ChiTietSanPham.aspx?IdProduct=" + item.id + "'><img src='" + item.img + "' alt='loi anh'></a>"
                                + "<span class='product-name'>" + item.name + "</span>"
                                + "<br>"
                                + "<span class='price'>" + item.price + "đ</span>";
                            if ((string)Session["email"] == "admin")
                            {
                                tr += $"<a  href=\"Xoasanpham.aspx?IdProduct={item.id}\" style=\"text-decoration: none; padding-left: 50%;\">Xóa </a>"
                                   + "</div>";
                            }
                            else
                            {
                                tr += "</div>";
                            }
                        }
                    }
                }
                else if (Request.QueryString["type"] == "2")
                {
                    foreach (objects.Product item in dsSanPham)
                    {
                        if (item.type == "2")
                        {
                            tr += "<div class='product-item-p'>"
                                + "<a href='/ChiTietSanPham.aspx?IdProduct=" + item.id + "'><img src='" + item.img + "' alt='loi anh'></a>"
                                + "<span class='product-name'>" + item.name + "</span>"
                                + "<br>"
                                + "<span class='price'>" + item.price + "</span>";
                            if ((string)Session["email"] == "admin")
                            {
                                tr += $"<a  href=\"Xoasanpham.aspx?IdProduct={item.id}\" style=\"text-decoration: none; padding-left: 50%;\">Xóa </a>"
                                   + "</div>";
                            }
                            else
                            {
                                tr += "</div>";
                            }
                        }
                    }
                }
                else if (Request.QueryString["type"] == "3")
                {
                    foreach (objects.Product item in dsSanPham)
                    {
                        if (item.type == "3")
                        {
                            tr += "<div class='product-item-p'>"
                                + "<a href='/ChiTietSanPham.aspx?IdProduct=" + item.id + "'><img src='" + item.img + "' alt='loi anh'></a>"
                                + "<span class='product-name'>" + item.name + "</span>"
                                + "<br>"
                                + "<span class='price'>" + item.price + "</span>";
                            if ((string)Session["email"] == "admin")
                            {
                                tr += $"<a  href=\"Xoasanpham.aspx?IdProduct={item.id}\" style=\"text-decoration: none; padding-left: 50%;\">Xóa </a>"
                                   + "</div>";
                            }
                            else
                            {
                                tr += "</div>";
                            }
                        }
                    }
                }
                else if (Request.QueryString["type"] == "4")
                {
                    foreach (objects.Product item in dsSanPham)
                    {
                        if (item.type == "4")
                        {
                            tr += "<div class='product-item-p'>"
                                + "<a href='/ChiTietSanPham.aspx?IdProduct=" + item.id + "'><img src='" + item.img + "' alt='loi anh'></a>"
                                + "<span class='product-name'>" + item.name + "</span>"
                                + "<br>"
                                + "<span class='price'>" + item.price + "</span>";
                            if ((string)Session["email"] == "admin")
                            {
                                tr += $"<a  href=\"Xoasanpham.aspx?IdProduct={item.id}\" style=\"text-decoration: none; padding-left: 50%;\">Xóa </a>"
                                   + "</div>";
                            }
                            else
                            {
                                tr += "</div>";
                            }
                        }
                    }
                }
            }
            productsP.InnerHtml = tr;
        }
    }
}