using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HQs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ComicShop.Camadas.BLL.HQ bllHQ = new ComicShop.Camadas.BLL.HQ();
        grvHqs.DataSource = bllHQ.Select();
        grvHqs.DataBind();

    }

  
}