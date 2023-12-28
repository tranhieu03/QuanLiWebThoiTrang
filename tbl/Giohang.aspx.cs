using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Giohang : System.Web.UI.Page
    {
        List<objects.ProductOfUser> giohang;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            giohang = (List<objects.ProductOfUser>)Application["giohang"];

            if ((string)Session["username"] != null)
            {
                usernamelogout.Style.Add("display", "inline");
                username.InnerText = (string)Session["username"];
                loginregister.Style.Add("display", "none");

                email = (string)Session["email"];

                string html = "";
                html += "<div class='tieude'>"
                        + "<h2>GIỎ HÀNG CỦA TÔI</h2>"
                        + "<hr />"
                      + "</div>"
                      + "<table>"
                      + "<tr>"
                        + "<th>Stt</th>"
                        + "<th>Hình ảnh</th>"
                        + "<th>Tên sản phẩm</th>"
                        + "<th>Giá</th>"
                      + "</tr>";
                int stt = 1;
                //double Tong = 0;
                for (int i = 0; i < giohang.Count; i++)
                {
                    if (giohang[i].Email == email)
                    {
                        html += "<tr>"
                                + "<td>" + stt + "</td>"
                                + "<td><img src='" + giohang[i].Product.img + "' alt='ảnh sản phẩm' width='50px'/></td>"
                                + "<td>" + giohang[i].Product.name + "</td>"
                                + "<td style='color=brown'>" + giohang[i].Product.price + "đ</td>"
                                + "<td><a href='Xoa.aspx?id=" + giohang[i].id + "'>Xóa</a></td>"
                              + "</tr>";
                        stt++;
                        //Tong += Convert.ToDouble(giohang[i].Product.price);
                    }
                }

                html += "</table>";

                khung.InnerHtml = html;

                //Tongtien.InnerHtml = $"{Tong.ToString()}đ";
            }

            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
        }
    }
}