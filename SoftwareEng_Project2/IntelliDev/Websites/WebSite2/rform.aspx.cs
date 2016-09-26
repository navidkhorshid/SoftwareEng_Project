using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rform : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    int idnum = 1001;
    string lidnum = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        var id = from r in db.receptions
                 select r.rec_code;
        if (id.Count() != 0)
            idnum = id.Count() + idnum;
        TextBox1.Text = idnum.ToString();

        var lid = from l in db.laptops
                  select l.lap_serial;
        if (lid.Count() != 0)
            lidnum = (Convert.ToInt32(lid.Count()) + 1).ToString();

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        var custid = from c in db.customers
                     select c.cust_id;
        
        int cid = custid.Count() + 101;

        customer cu = new customer
        {
            cust_id = cid,
            cust_fname = TextBox2.Text,
            cust_lname = TextBox3.Text,
            cust_tel = TextBox5.Text,
            lap_serial = lidnum
        };

        laptop l = new laptop
        {
            lap_serial = lidnum,
            lap_model = DropDownList1.SelectedIndex + 1 ,
            @fixed = false,
            lap_se = TextBox4.Text
        };

        int rid = (int)Session["rid"];
        DateTime saveNow = DateTime.Now;

        reception r = new reception
        {
            rec_code = idnum,
            lap_serial = lidnum,
            recep_id = rid,
            recep_desc = TextBox6.Text,
            rec_date = saveNow
        };
        
        db.customers.InsertOnSubmit(cu);
        db.laptops.InsertOnSubmit(l);
        db.receptions.InsertOnSubmit(r);
        db.SubmitChanges();
        db.insertlapprob(lidnum, null,null,null);
        Session["rid"] = rid;
        Response.Redirect("Receptionist.aspx");

    }
}