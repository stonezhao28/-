using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UtilLib;

namespace Web.main_paymanager.program
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnShuaka_Click(object sender, EventArgs e)
        {
            Common.ShowMsg("按到回车了"+((Button)sender).Text);
        }

        }
}