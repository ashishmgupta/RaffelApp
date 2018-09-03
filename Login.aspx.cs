using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RaffelApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if ((UserName.Text == "azureclt") &&
              (UserPass.Text == "YourWebsitePassword"))
            {
                HttpCookie authenticated = new HttpCookie("Auth");
                //authenticated.HttpOnly = true;
                //authenticated.Secure = true;
                authenticated.Value = "YourAuthCookieValue";
                authenticated.Expires = DateTime.Now.AddDays(1);
                authenticated.Domain = ".azureclt.azurewebsites.net"; 
                Response.Cookies.Add(authenticated);
                Response.Redirect("MeetupMembers.aspx");
            }
            else
            {
                Msg.Text = "Invalid credentials. Please try again. ";
            }
        }
    }
}