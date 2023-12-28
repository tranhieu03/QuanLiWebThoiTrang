using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Dangki : System.Web.UI.Page
    {
        List<objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<objects.User>)Application["listUser"];
        }

        protected void BtnDangKy_Click(object sender, EventArgs e)
        {
            string ten = Request.Form["Ten"];
            string email = Request.Form["Email"];
            string sdt = Request.Form["SDT"];
            string pass = Request.Form["Pass"];

            bool ok = true;

            foreach (objects.User i in listUser)
            {
                if (i.email == email)
                {
                    ok = false;
                    error_email.InnerHtml = "* Email đã được sử dụng";
                    break;
                }
                else
                {
                    error_email.InnerHtml = "";
                }
                if (i.sdt == sdt)
                {
                    ok = false;
                    error_sdt.InnerHtml = "* SDT đã được sử dụng";
                    break;
                }
                else
                {
                    error_sdt.InnerHtml = "";
                }
            }

            if (ok)
            {
                objects.User new_user = new objects.User(ten, email, sdt, pass);
                listUser.Add(new_user);
                Application["listUser"] = listUser;
                Response.Redirect("Dangnhap.aspx");
            }
        }
    }
}