using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Doimatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            objects.User user = (objects.User)Session["Emailquen"];
            if (user == null)
            {
                Response.Redirect("Quenmatkhau.aspx");
            }
            if (IsPostBack)
            {
                foreach(objects.User u in (List<objects.User>)Application["listUser"])
                {
                    if(u.email == user.email)
                    {
                        u.password = Request.Form["Pass"];
                        Session.Abandon();
                        Response.Redirect("Dangnhap.aspx");
                    }
                }
            }
            
        }
    }
}