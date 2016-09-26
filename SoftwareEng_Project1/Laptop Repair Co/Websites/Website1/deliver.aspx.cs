using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// 


//public class DistinctTitle : IEqualityComparer<string>
//{
//    public bool Equals(string x, string y)
//    {
//        return x.Equals(y);
//    }

//    public int GetHashCode(string obj)
//    {
//        return obj.GetHashCode();
//    }
//}



public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    

    protected void DropDownList1_Load(object sender, EventArgs e)
    {

        var rcustomer = (from m in db.MR_CODEs
                         where (m.MRC_Deldate == null && (m.MRC_FDATE != null && ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) > 0)))
                   select new 
                   {
                       customer = (from c in db.REAL_CUSTOMERs
                                   where (m.RCST_ID == c.RCST_ID)
                                   select new
                                   {
                                       name = c.RCST_FNAME + " " + c.RCST_LNAME
                                   })
                   });
        
        //var rcustomer = from r in db.REAL_CUSTOMERs
        //                where (r.RCST_DATE_DELIVER == null)
        //                select new
        //                 {
        //                     name = r.RCST_FNAME + " " + r.RCST_LNAME
        //                 };

        foreach (var rc in rcustomer)
        {
            DropDownList1.Items.Add(rc.customer.First().name);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //var rcustomer = from r in db.REAL_CUSTOMERs
        //                where (r.RCST_DATE_DELIVER == null)
        //                select new
        //                {
        //                    rid = r.RCST_ID
        //                };
        var rcustomer = (from m in db.MR_CODEs
                         where (m.MRC_Deldate == null && (m.MRC_FDATE != null && ((DateTime.Now.ToShortDateString().CompareTo(m.MRC_FDATE)) > 0)))
                        select new
                        {
                            customer = from c in db.REAL_CUSTOMERs
                                  where (c.RCST_ID == m.RCST_ID)
                                  select new 
                                  {
                                      rid = c.RCST_ID
                                  }
                        });

        
        string[] array = new string[100];
        int i = 0;
        foreach (var rc in rcustomer)
        {
           array[i] = rc.customer.First().rid;
           i++;
        }
        string rcid = array[DropDownList1.SelectedIndex];
        Session["field1"] = rcid;
        Response.Redirect("deliver2.aspx");

    }
}