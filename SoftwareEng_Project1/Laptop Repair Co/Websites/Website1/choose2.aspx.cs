using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    
    protected void DropDownList2_Load(object sender, EventArgs e)
    {
        var workername = from w in db.TECHNICIANs
                       select new 
                       { 
                           name = w.TECH_FNAME + " " + w.TECH_LNAME ,

                       };

        foreach (var n in workername)
        {
            DropDownList2.Items.Add(n.name);
        }

    }



    protected void DropDownList1_Load(object sender, EventArgs e)
    {
        var mr = from m in db.MR_CODEs
                 where (m.MRC_FDATE == null || ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) <= 0))
                 select new
                 {
                     mrcode = m.RCST_ID + m.LAPTOP_ID + m.PROBLEM_ID,
                     mrid = m.MRC_ID
                 };

        foreach (var mc in mr)
        {
            DropDownList1.Items.Add(mc.mrcode);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var id = from w in db.WORK_ORDERs
                 select w.WO_ID;
        //
        var mr = from m in db.MR_CODEs
                 where (m.MRC_FDATE == null || ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) <= 0))
                 select new
                 {
                     mrid = m.MRC_ID
                 };

        string[] array = new string[100];
        int i=0;
        foreach(var mc in mr)
        {
            array[i] = mc.mrid;
            i++;
        }
        string mid = array[DropDownList1.SelectedIndex];
        //finish gettin mrcode

        string s = (string)(Session["field1"]);
        //s = "1";
        string dur = "";
        try
        {
            dur = TextBox1.Text;
        }
        catch
        {
            Label1.Text = "Please Enter Valid Duration";
        }

        string tid = ((DropDownList2.SelectedIndex)+1).ToString();

        string wid = (id.Count()+1).ToString() ;

        WORK_ORDER wo = new WORK_ORDER()
        {
            WO_ID = wid,
            CLERK_ID = s,
            WO_DUR = dur,
            WO_DATE = DateTime.Now.Date,
            WO_STARTTIME = DateTime.Now.ToShortTimeString(),
            TECH_ID = tid,
            MRC_ID = mid
        };
        
        db.WORK_ORDERs.InsertOnSubmit(wo);
        db.SubmitChanges();
        Response.Redirect("choose2.aspx");
    }



    protected void DropDownList3_Load(object sender, EventArgs e)
    {
        var mr = from m in db.MR_CODEs
                 where (m.MRC_FDATE == null || ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) <= 0))
                 select new
                 {
                     mrcode = m.RCST_ID + m.LAPTOP_ID + m.PROBLEM_ID,
                     mrid = m.MRC_ID
                 };

        foreach (var mc in mr)
        {
            DropDownList3.Items.Add(mc.mrcode);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //
        var mr = from m in db.MR_CODEs
                 where (m.MRC_FDATE == null || ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) <= 0))
                 select new
                 {
                     mrid = m.MRC_ID
                 };

        string[] array = new string[100];
        int i = 0;
        foreach (var mc in mr)
        {
            array[i] = mc.mrid;
            i++;
        }
        string mid = array[DropDownList3.SelectedIndex];
        //finish gettin mrcode

        int mm = Convert.ToInt16(TextBox2.Text);
        int dd = Convert.ToInt16(TextBox3.Text);
        int yyyy = Convert.ToInt16(TextBox4.Text);

        DateTime fin = new DateTime(yyyy, mm, dd);

        //updating a row
        MR_CODE mrc = (from m in db.MR_CODEs
                       where (m.MRC_ID == mid)
                       select m).Single();
        mrc.MRC_FDATE = fin;
        db.SubmitChanges();
        Response.Redirect("choose2.aspx");
    }
}


