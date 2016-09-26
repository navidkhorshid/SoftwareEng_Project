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

        int d = Convert.ToInt16((string)(Session["day"]));

        int days = DateTime.Now.DayOfYear;
        var id = from w in db.WORK_ORDERs
                 where (w.WO_DATE.DayOfYear <= days && ((days - d) <= w.WO_DATE.DayOfYear))
                 select new
                 {
                     worder = w.WO_DATE + " " + w.WO_STARTTIME + " Duration = " + w.WO_DUR,
                     clerkinfo = from c in db.CLERKs
                                 where (c.CLERK_ID == w.CLERK_ID)
                                 select new { Supervisor = c.CLERK_FNAME + " " + c.CLERK_LNAME},
                     techinfo = from t in db.TECHNICIANs
                                where (t.TECH_ID == w.TECH_ID)
                                select new { Technician = t.TECH_FNAME + " " + t.TECH_LNAME},
                     mrinfo = from m in db.MR_CODEs
                              where (m.MRC_ID == w.MRC_ID)
                              select new
                              {
                                  mrcode = m.RCST_ID + m.LAPTOP_ID + m.PROBLEM_ID
                              }

                 };

        foreach (var i in id)
        {
            ListBox1.Items.Add(i.worder + " " + i.clerkinfo.First() + " " + i.techinfo.First() + " " + i.mrinfo.First());
        }
    }
    
}