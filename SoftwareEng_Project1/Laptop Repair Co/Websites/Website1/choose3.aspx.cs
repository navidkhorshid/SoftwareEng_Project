using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["day"] = "7";
        if(RadioButton1.Checked)
            Response.Redirect("report.aspx");
        if (RadioButton2.Checked)
            Response.Redirect("report2.aspx");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["day"] = "31";
        if (RadioButton1.Checked)
            Response.Redirect("report.aspx");
        if (RadioButton2.Checked)
            Response.Redirect("report2.aspx");
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["day"] = "365";
        if (RadioButton1.Checked)
            Response.Redirect("report.aspx");
        if (RadioButton2.Checked)
            Response.Redirect("report2.aspx");
        
    }
}