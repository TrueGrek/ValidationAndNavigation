using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationAndNavigation.ControlsV
{
    public partial class CustomV : System.Web.UI.Page
    {
        protected void ButtonOk_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("Сработал обработчик в коде страницы.");
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int value = 0;
            if (Int32.TryParse(args.Value, out value))
            {
                if (value % 2 == 0)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                    (source as Label).Text = "Значение должно быть четным";
                }
            }
            else
            {
                args.IsValid = false;
                (source as Label).Text = "Введите число";
            }
        }
    }
}