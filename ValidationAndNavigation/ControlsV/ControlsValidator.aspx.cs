using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationAndNavigation
{
    
    public partial class ControlsValidator : System.Web.UI.Page
    {
        
        protected void OkButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("Операция прошла успешно");
            }
        }

    }
}