using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
    protected void DropDownList1_Load(object sender, EventArgs e)
    {
        var pro = from p in db.PROBLEMs
                  select p.PROBLEM_DISC;

        foreach (var pm in pro)
        {
            DropDownList1.Items.Add(pm.ToString());
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        var pro = from p in db.PROBLEMs
                  select p.PROBLEM_ID;

        string[] array = new string[40];
        int i = 0;
        foreach (var po in pro)
        {
            array[i] = po.ToString();
            i++;
        }
        string lapid = (string)Session["field1"];
        string rcid = (string)Session["field2"];
        string pid = array[DropDownList1.SelectedIndex];

        Session["field1"] = lapid;
        Session["field2"] = rcid;
        Session["field3"] = pid;

        Response.Redirect("printmr.aspx");

    }
}