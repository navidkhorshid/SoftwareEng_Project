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

        var id = from m in db.MR_CODEs
                 where (m.MRC_SDATE.DayOfYear <= days && ((days - d) <= m.MRC_SDATE.DayOfYear))
                 select new
                 {
                     mrcode = m.RCST_ID + m.LAPTOP_ID + m.PROBLEM_ID,
                     //date = "Start: " + m.MRC_SDATE + " Finish: " + m.MRC_FDATE + " Delivered: " + m.MRC_Deldate,
                     prob = from p in db.PROBLEMs
                            where (p.PROBLEM_ID == m.PROBLEM_ID)
                            select new { Repair = p.PROBLEM_DISC },
                     lap = from l in db.LAPTOPs
                           where (l.LAPTOP_ID == m.LAPTOP_ID)
                           select new { Laptop = l.LAPTOP_NAME + "-" + l.LAPTOP_MODEL },
                     rcr = from r in db.REAL_CUSTOMERs
                           where (r.RCST_ID == m.RCST_ID)
                           select new { customer = r.RCST_LNAME + " " + r.RCST_CODE }

                 };


        foreach (var i in id)
        {
            ListBox1.Items.Add(i.mrcode + " "  + i.prob.First() + " " + i.lap.First()+ " " + i.rcr.First().customer );
        }
    }

    
}