using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace tbl
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<objects.User> listUser = new List<objects.User>();
            List<objects.Product> listProduct = new List<objects.Product>();


            listUser.Add(new objects.User("Ha", "hahoaiduc1234@gmail.com", "0392310319", "12345678"));
            listUser.Add(new objects.User("admin", "admin", "", "123456"));
            Application["listUser"] = listUser;


            /*
                1. Giày
                2. Mũ
                3. Áo
                4. Quần
            */

            listProduct.Add(new objects.Product("1", "/img/sp1.jpg", "Giày Nike Airforce one", "500.000", "Hàng mới nhập", "1"));
            listProduct.Add(new objects.Product("2", "/img/sp2.jpg", "Giày jordan trắng", "500.000", "Hàng mới nhập", "1"));
            listProduct.Add(new objects.Product("3", "/img/sp3.jpg", "Mũ Nike lưỡi chai đen", "500.000", "Hàng mới nhập", "2"));
            listProduct.Add(new objects.Product("4", "/img/sp4.jpg", "Áo khoác thể thao xanh", "500.000", "Hàng mới nhập", "3"));
            listProduct.Add(new objects.Product("5", "/img/sp5.jpg", "Quần short xám", "500.000", "Hàng mới nhập", "4"));
            listProduct.Add(new objects.Product("6", "/img/sp6.jpg", "Quần nike", "400.000", "Hàng mới nhập", "4"));
            listProduct.Add(new objects.Product("7", "/img/sp7.jpg", "Mũ nike", "450.000", "Hàng mới nhập", "2"));
            listProduct.Add(new objects.Product("8", "/img/sp8.jpg", "Áo nike", "500.000", "Hàng mới nhập", "3"));
            listProduct.Add(new objects.Product("9", "/img/sp9.jpg", "Quần nike", "500.000", "Hàng mới nhập", "4"));
            listProduct.Add(new objects.Product("10", "/img/sp10.jpg", "Áo thể thao ôm sát", "500.000", "Hàng mới nhập", "3"));
            listProduct.Add(new objects.Product("11", "/img/sp11.jpg", "Áo khoác thể thao", "500.000", "Hàng mới nhập", "3"));
            listProduct.Add(new objects.Product("12", "/img/sp12.jpg", "Mũ Nike đen vàng", "600.000", "Hàng mới nhập", "2"));
            listProduct.Add(new objects.Product("13", "/img/sp13.jpg", "Giày nike", "500.000", "Hàng mới nhập", "1"));
            listProduct.Add(new objects.Product("14", "/img/sp14.jpg", "Giày Nike Airforce two", "550.000", "Hàng mới nhập", "1"));
            listProduct.Add(new objects.Product("15", "/img/sp15.jpg", "Giày Nike Holo night", "450.000", "Hàng mới nhập", "1"));
            listProduct.Add(new objects.Product("16", "/img/sp16.jpg", "Giày Nike Holo dark", "400.000", "Hàng mới nhập", "1"));


            Application["listProduct"] = listProduct;


            List<objects.ProductOfUser> gioHang = new List<objects.ProductOfUser>();
            Application["giohang"] = gioHang;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}