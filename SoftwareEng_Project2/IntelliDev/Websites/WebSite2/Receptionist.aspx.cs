using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Receptionist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int rid = (int)Session["rid"];
        Session["rid"] = rid;
    }
}