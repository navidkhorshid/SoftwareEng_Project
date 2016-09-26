using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        string lapid = (string)Session["field1"];
        string rcid = (string)Session["field2"];
        string pid = (string)Session["field3"];

        var cust = from c in db.REAL_CUSTOMERs
                   where (c.RCST_ID == rcid)
                   select c.RCST_FNAME + " " + c.RCST_LNAME + " " + c.RCST_CODE;
        var lap = from l in db.LAPTOPs
                  where (l.LAPTOP_ID == lapid)
                  select l.LAPTOP_NAME + " " + l.LAPTOP_MODEL + " " + l.LAPTOP_SERIAL;
        var prm = from p in db.PROBLEMs
                  where (p.PROBLEM_ID == pid)
                  select p.PROBLEM_ID + " - " + p.PROBLEM_DISC;

        Label4.Text = lap.First();
        Label5.Text = cust.First();
        Label6.Text = prm.First();
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string lapid = (string)Session["field1"];
        string rcid = (string)Session["field2"];
        string pid = (string)Session["field3"];

        var mrid = from m in db.MR_CODEs
                   select m.MRC_ID;

        string mrcid = (mrid.Count() + 1).ToString();

        MR_CODE mcode = new MR_CODE()
        {
            MRC_ID = mrcid,
            LAPTOP_ID = lapid,
            RCST_ID = rcid,
            PROBLEM_ID = pid,
            MRC_SDATE = DateTime.Now.Date,
            MRC_Deldate = null,
            MRC_FDATE = null
        };
        db.MR_CODEs.InsertOnSubmit(mcode);
        db.SubmitChanges();

        Response.Redirect("choose.aspx");

    }
    
}