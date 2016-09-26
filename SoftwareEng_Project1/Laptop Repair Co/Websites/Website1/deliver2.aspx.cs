using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    
    protected void DropDownList1_Load(object sender, EventArgs e)
    {
        string s = (string)(Session["field1"]);
        var lpid = from m in db.MR_CODEs
                   where (m.RCST_ID == s && m.MRC_Deldate == null && (m.MRC_FDATE != null && ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) > 0)))
                 select new
                 {
                 laptop = from l in db.LAPTOPs
                          where (l.LAPTOP_ID == m.LAPTOP_ID)
                          select new
                          {
                            lname = l.LAPTOP_NAME + " " + l.LAPTOP_MODEL + " " + l.LAPTOP_SERIAL
                          }
                 };
        foreach (var ll in lpid)
            DropDownList1.Items.Add(ll.laptop.First().lname);
  
    }

    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        string s = (string)(Session["field1"]);
        var lpid = from m in db.MR_CODEs
                   where (m.RCST_ID == s && m.MRC_Deldate == null && (m.MRC_FDATE != null && ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) > 0)))
                   select new
                   {
                       laptop = from l in db.LAPTOPs
                                where (l.LAPTOP_ID == m.LAPTOP_ID)
                                select new
                                {
                                    mid = m.MRC_ID
                                }
                   };


        string[] array = new string[100];
        int i = 0;
        foreach (var ll in lpid)
        {
            array[i] = ll.laptop.First().mid;
            i++;
        }

        string mcid = array[DropDownList1.SelectedIndex];
        Session["field1"] = mcid;
        Response.Redirect("deliver3.aspx");

    }
    
}