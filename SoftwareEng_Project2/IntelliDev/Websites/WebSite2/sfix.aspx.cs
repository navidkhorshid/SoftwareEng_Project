using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sfix : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        int sid = (int)Session["supid"];
        Session["supid"] = sid;
    }




    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "accept")
        {
            
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            Button Button1 = (Button)row.FindControl("Button1");
            Button1.Enabled = false;

            Button Button2 = (Button)row.FindControl("Button2");
            Button2.Enabled = false;

            

            string ptitle = row.Cells[3].Text;
            string lapser = row.Cells[1].Text;
            var proid = from p in db.Problems
                        where (p.prob_title == ptitle)
                        select p.prob_id;
            db.updatelapprobfix(lapser, Convert.ToInt16(proid.First()), 1);
            GridView1.DataBind();

        }

        if (e.CommandName == "deny")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            Button Button1 = (Button)row.FindControl("Button1");
            Button1.Enabled = false;

            Button Button2 = (Button)row.FindControl("Button2");
            Button2.Enabled = false;

            DateTime saveNow = DateTime.Now;
            int rcode = Convert.ToInt16(row.Cells[0].Text);
            string ptitle = row.Cells[3].Text;
            string lapser = row.Cells[1].Text;
            var proid = from p in db.Problems
                        where (p.prob_title == ptitle)
                        select p.prob_id;
            db.updatelapprobstart(lapser, Convert.ToInt16(proid.First()), null);
            db.updatelapprobfinish(lapser, Convert.ToInt16(proid.First()), null);
            db.updatestformstafflasttime(rcode, saveNow);
            db.updatestformstaffdesc(rcode, " ");

            GridView1.DataBind();
            
        }

    }




}