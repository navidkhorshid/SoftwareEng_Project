using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mreport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        DateTime cal1 = Calendar2.SelectedDate;
        TextBox1.Text = cal1.ToString();
    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        DateTime cal2 = Calendar3.SelectedDate;
        TextBox2.Text = cal2.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
        }
        else
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
        }
        GridView1.DataBind();
        GridView2.DataBind();
    }
}