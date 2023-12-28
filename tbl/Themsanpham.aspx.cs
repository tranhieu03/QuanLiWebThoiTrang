using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Themsanpham : System.Web.UI.Page
    {
        List<objects.Product> listProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            if((string)Session["email"] != "admin")
            {
                Response.Redirect("Sanpham.aspx");
            }
            else
            {
                usernamelogout.Style.Add("display", "inline");
                username.InnerText = (string)Session["username"];
                loginregister.Style.Add("display", "none");
                string err = Request.QueryString["error"];
                if(err != null)
                {
                    error.InnerHtml = "Id đã bị trùng với những sản phẩm có trước";
                }
                listProduct = (List<objects.Product>)Application["listProduct"];
                int dem = 0;
                foreach(objects.Product p in listProduct)
                {
                    dem++;
                }
                string sosanpham = "";
                sosanpham = $"danh sách có {dem.ToString()} sản phẩm";
                Sosp.InnerHtml = sosanpham;
                if (IsPostBack)
                {
                    string id = Request.Form["id"];
                    foreach(objects.Product p in listProduct)
                    {
                        if(id == p.id)
                        {
                            Response.Redirect("Themsanpham.aspx?error=ok");
                        }
                    }
                    string img = $"/img/{Request.Form["img"]}.jpg";
                    string name = Request.Form["name"];
                    string price = Request.Form["price"];
                    string detail = "Hàng mới nhập";
                    string select = Request.Form["type"];
                    string type = (select == "Giày") ? "1" : (select == "Mũ") ? "2" : (select == "Áo") ? "3" : "4";
                    listProduct.Add(new objects.Product(id, img, name, price, detail, type));
                    Response.Redirect("Sanpham.aspx");
                }
            }
            
        }
    }
}