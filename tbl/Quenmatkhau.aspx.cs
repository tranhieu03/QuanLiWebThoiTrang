using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Quenmakhau : System.Web.UI.Page
    {
        List<objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<objects.User>)Application["listUser"];
            if (IsPostBack)
            {
                string email = Request.Form["dnEmail"];
                foreach(objects.User i in listUser)
                {
                    if(i.email == email)
                    {
                        Session["Emailquen"] = i;
                        Response.Redirect("Xacminhthongtin.aspx");
                    }
                }
                error_email.InnerHtml = "Sai email";
            }
        }
    }
}