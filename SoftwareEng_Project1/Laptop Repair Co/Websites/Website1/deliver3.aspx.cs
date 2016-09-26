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
        string mr = (string)(Session["field1"]);
        //Label1.Text = mr;

        var mcid = from m in db.MR_CODEs
                  where (m.MRC_ID == mr)
                  select new
                  {
                      lid = m.LAPTOP_ID,
                      pid = m.PROBLEM_ID,
                      rid = m.RCST_ID
                  };

        string l = mcid.Single().lid;
        string p = mcid.Single().pid;
        string r = mcid.Single().rid;

        //Label2.Text = l;// laptop id
        //Label3.Text = p;//problem id
        //Label4.Text = r;//real customer id

        var lap = from la in db.LAPTOPs
                  where (la.LAPTOP_ID == l)
                  select new
                  {
                      lname = la.LAPTOP_NAME,
                      lmodel = la.LAPTOP_MODEL,
                      lserial = la.LAPTOP_SERIAL,
                      lguar = la.LAPTOP_GUARANTY_TYPE
                  };
        var pro = from pr in db.PROBLEMs
                  where (pr.PROBLEM_ID == p)
                  select new
                  {
                      pdisc = pr.PROBLEM_DISC
                  };

        var rcust = from rc in db.REAL_CUSTOMERs
                  where (rc.RCST_ID == r)
                  select new
                  {
                      rlegal = rc.LCST_ID,
                      rname = rc.RCST_FNAME + " " + rc.RCST_LNAME,
                      rcode = rc.RCST_CODE,
                      rphone = rc.RCST_MOBILE + " " + rc.RCST_TEL,
                      rmail = rc.RCST_EMAIL
                  };

        Label1.Text = lap.First().lname;
        Label2.Text = lap.First().lmodel;
        Label3.Text = lap.First().lserial;
        Label4.Text = lap.First().lguar;
        Label5.Text = pro.First().pdisc;
        Label6.Text = rcust.First().rname;
        Label7.Text = rcust.First().rcode;
        Label8.Text = rcust.First().rphone;
        Label9.Text = rcust.First().rmail;

        if (rcust.First().rlegal != null) 
        {
            var lcust = from lc in db.LEGAL_CUSTOMERs
                        where (lc.LCST_ID == rcust.First().rlegal)
                        select new
                        {
                            lconame = lc.LCST_CONAME,
                            ltel = lc.LCST_TEL,
                            ladd = lc.LCST_ADD,
                            lphone = lc.LCST_EMAIL
                        };
            Label10.Text = lcust.First().lconame;
            Label11.Text = lcust.First().ltel;
            Label12.Text = lcust.First().ladd;
            Label13.Text = lcust.First().lphone;
        }
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //updating a row
        string mr = (string)(Session["field1"]);
        MR_CODE mrc = (from m in db.MR_CODEs
                       where (m.MRC_ID == mr)
                       select m).Single();
        mrc.MRC_Deldate = DateTime.Now.Date;
        db.SubmitChanges();
        Response.Redirect("choose.aspx");
    }
}