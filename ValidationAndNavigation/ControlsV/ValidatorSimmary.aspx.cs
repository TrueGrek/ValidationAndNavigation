using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationAndNavigation.ControlsV
{
    public partial class ValidatorSimmary : System.Web.UI.Page
    {
        protected void ButtonOk_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("Сработал обработчик в коде страницы.");
            }
        }
    }
}