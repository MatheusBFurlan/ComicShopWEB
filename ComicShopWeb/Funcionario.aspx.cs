using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        Session["lblLogin"] = txtLogin.Text;
        Response.Redirect("Home.aspx");
    }

    protected void txtLogin_TextChanged(object sender, EventArgs e)
    {

    }
}