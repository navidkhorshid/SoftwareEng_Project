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
        //print data
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var id = from l in db.LAPTOPs
                 select l.LAPTOP_ID;

        string lid = (id.Count() + 1).ToString();
        if (lid.Length < 6) 
        {
            int zero = 6 - lid.Length;
            string zer = null;
            while (zero > 0) 
            {
                zer = zer + "0";
                zero--;
            }

            lid = zer + lid;
        }

        LAPTOP lp = new LAPTOP()
        {
            LAPTOP_ID = lid,
            LAPTOP_NAME = TextBox1.Text,
            LAPTOP_MODEL = TextBox2.Text,
            LAPTOP_SERIAL = TextBox3.Text,
            LAPTOP_GUARANTY_TYPE = TextBox4.Text + " Month"
        };

        db.LAPTOPs.InsertOnSubmit(lp);
        db.SubmitChanges();
        Session["laptopid"] = lid;
        Response.Redirect("receive2.aspx");
    }
}