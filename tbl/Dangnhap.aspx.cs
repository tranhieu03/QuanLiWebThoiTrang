using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        List<objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<objects.User>)Application["listUser"];
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["pass"];
            string username = "";

            if (IsPostBack)
            {
                foreach (objects.User i in listUser)
                {
                    if (i.email == email && i.password == password)
                    {
                        username = i.username;
                    }
                }
                if (username != "")
                {
                    Session["email"] = email;
                    Session["username"] = username;
                    Response.Redirect("/Index.aspx");
                }
                else
                {
                    error_pass.Style.Add("color", "red");
                    error_pass.InnerHtml = "* Email hoặc mật khẩu không khớp";
                }
            }
        }
    }
}