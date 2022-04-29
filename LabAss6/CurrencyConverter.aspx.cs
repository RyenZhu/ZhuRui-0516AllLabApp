using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabAss6
{
    public partial class CurrencyConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            double n1 = Convert.ToDouble(txtChinese.Text);
            double result = n1 * 0.16;
            lbl2.Text = txtChinese.Text + " Chinese Yuan = " + result.ToString() + " Dollar.";
        }
    }
}