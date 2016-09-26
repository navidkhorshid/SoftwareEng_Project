using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    

    public void Page_Load(object sender, EventArgs e)
    {
           
    }

    protected void DropDownList1_Load(object sender, EventArgs e)
    {
        var legal = from l in db.LEGAL_CUSTOMERs
                    select new
                    {
                        leg = l.LCST_CONAME + " " + l.LCST_ADD
                    };

        DropDownList1.Items.Add(" Real Customer ");
        
        foreach (var le in legal)
        {
            DropDownList1.Items.Add(le.leg);
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string lapid = (string)Session["laptopid"];//lid 
        string realorlegal;
        if (DropDownList1.SelectedIndex != 0)
        {
            var legal = from l in db.LEGAL_CUSTOMERs
                        select new
                        {
                            legid = l.LCST_ID
                        };

            string[] array = new string[100];
            int i = 0;
            foreach (var le in legal)
            {
                array[i] = le.legid;
                i++;
            }
            realorlegal = array[DropDownList1.SelectedIndex - 1];// -1 is for real customer added data
            
        }
        else 
        {
            realorlegal = null;
        }


        var idexist = from ex in db.REAL_CUSTOMERs
                      where (ex.RCST_CODE == TextBox3.Text)
                      select ex.RCST_ID;

        var id = from r in db.REAL_CUSTOMERs
                 select r.RCST_ID;

        string rcid;

        if (idexist.Count() == 0)
        {

            rcid = (id.Count() + 1).ToString();
            
            //6 digit adding zeros
            if (rcid.Length < 6)
            {
                int zero = 6 - rcid.Length;
                string zer = null;
                while (zero > 0)
                {
                    zer = zer + "0";
                    zero--;
                }

                rcid = zer + rcid;
            }
            //6 digit end


            REAL_CUSTOMER rc = new REAL_CUSTOMER()
            {
                RCST_ID = rcid,
                RCST_FNAME = TextBox1.Text,
                RCST_LNAME = TextBox2.Text,
                RCST_CODE = TextBox3.Text,
                RCST_TEL = TextBox4.Text,
                RCST_MOBILE = TextBox5.Text,
                RCST_EMAIL = TextBox6.Text,
                RCST_ADD = TextBox7.Text,
                LCST_ID = realorlegal
            };

            db.REAL_CUSTOMERs.InsertOnSubmit(rc);
            db.SubmitChanges();
        }
        else 
        {   //if customer already exists in the list
            rcid = idexist.ToString();
        }

        Session["field1"] = lapid;
        Session["field2"] = rcid;
        Response.Redirect("receive3.aspx");

       
    }
}