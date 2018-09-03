using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RaffelApp
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginPage = System.IO.Path.GetFileName(HttpContext.Current.Request.FilePath);
            if (loginPage != "Login")
            {
                bool isAuthenticated = (Context.Request.Cookies.AllKeys.Contains("Auth")
                && !string.IsNullOrEmpty(Context.Request.Cookies["Auth"].Value)
                && Context.Request.Cookies["Auth"].Value == "YourAuthCookieValue");

                if (!isAuthenticated)
                { 
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}