using lib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RaffelApp
{
    public partial class RaffelWinner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MeetUpDAL dal = new MeetUpDAL();
            string raffelWinnner = dal.GetRaffelWinner();
            if (raffelWinnner.EndsWith(","))
            {
                raffelWinnner = raffelWinnner.Substring(0, raffelWinnner.Length - 1);
            }
            lblRaffelWinner.Text = raffelWinnner;
        }
    }
}