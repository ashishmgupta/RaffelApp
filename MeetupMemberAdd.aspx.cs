using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RaffelApp
{
    public partial class MeetupMemberAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                lib.MeetUpDAL meetupDAL = new lib.MeetUpDAL();
                meetupDAL.AddMember(txtName.Text, txtCompanyName.Text, chkAzurePassReceived.Checked, txtEmail.Text, chkRegisteredForRaffel.Checked);
                Response.Redirect("MeetupMembers.aspx");
            }
            catch (Exception exp)
            {
                lblErrorMessage.Text = exp.ToString();
            }
        }
    }
}