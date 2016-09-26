using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class srecclick : System.Web.UI.Page
{
    int receptionid;
    string lapser = "";
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        receptionid = (int) Session["recepid"];

        var lap = from r in db.receptions
                  where (r.rec_code == receptionid)
                  select new
                  {
                      reccode = r.rec_code + " " + r.recep_desc,

                      laptopdetails = from l in db.laptops
                                      where (l.lap_serial == r.lap_serial)
                                      select new
                                      {
                                          lapser = l.lap_serial,
                                          model = from m in db.lap_models
                                                  where (l.lap_model == m.mod_id)
                                                  select new { mod = l.lap_serial + " " + m.model + " " + l.lap_se }
                                      }
                  };
        lapser = lap.First().laptopdetails.First().lapser;
        Label1.Text = lap.First().reccode;
        //Label1.Text = receptionid.ToString();
        Label2.Text = lap.First().laptopdetails.First().model.First().mod;
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        int sid = (int) Session["supid"];
        //az bala
        //az dropdown list va chon ziadast listbox
        
        //receptionid
        //textbox1
        //az session
        for (int i = 0; i < ListBox1.Items.Count; i++) 
        {
            var prob = from p in db.Problems
                       where (p.prob_title == ListBox1.Items[i].Value)
                       select p.prob_id;

            db.insertlapprob(lapser, prob.First(),null,null);
        }
        db.insertsupform(receptionid, TextBox1.Text.ToString(), sid);
        db.deletenullfromlapprob(lapser);

        var allstaff = from st in db.staffs
                       select st.st_id;

        var workedstaff = from sf in db.st_forms
                          select new
                          {
                              l = from st in db.staffs
                                  where (st.st_id == sf.st_id)
                                  select st.st_id
                          };

        int staffwhoworked = workedstaff.First().l.Count();

        int allst = allstaff.Count();
        int[] array = new int[allst];
        if (staffwhoworked != allst) //barabar naboodane kasanike kar kardand ba kol
        {

            for (int i = 0; i < allst; i++)
            {
                array[i] = 0; // zero for those who didn't work 
            }
            foreach (var ws in workedstaff)
            {
                int ind = ws.l.First();
                array[ind - 1] = 1;
            }
        }
        else 
        {
            var timeoflastwork = from stf in db.st_forms
                                    select stf.st_lasttime;
            DateTime tmp = timeoflastwork.First().Value;
            foreach (var t in timeoflastwork)
            {
                if (DateTime.Compare(tmp, t.Value) < 0) 
                {
                    tmp = t.Value;
                }
            }
            var selectedstaff = from sstt in db.st_forms
                                where (sstt.st_lasttime == tmp)
                                select sstt.st_id;
            array[selectedstaff.First().Value - 1] = 1;
        }
        
        int freestaff;
        for (freestaff = 0; freestaff < allst; freestaff++) 
        {
            if (array[freestaff] == 0) break;
        }

        DateTime saveNow = DateTime.Now;

        db.insertstform(receptionid, " " , freestaff+1 , saveNow);
        Session["supid"] = sid;
        Response.Redirect("supervisor.aspx");
            
            //db.insertlapprob(lapser, Convert.ToInt16(DropDownList1.SelectedValue));
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var prob = from p in db.Problems
                   where (p.prob_id == Convert.ToInt16(DropDownList1.SelectedValue))
                   select p.prob_title;

        ListBox1.Items.Add(prob.First());
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if(ListBox1.SelectedIndex != -1)
        ListBox1.Items.Remove(ListBox1.SelectedItem.Text);
    }
}