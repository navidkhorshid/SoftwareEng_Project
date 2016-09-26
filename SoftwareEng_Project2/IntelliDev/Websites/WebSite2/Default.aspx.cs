using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

        DataClassesDataContext db = new DataClassesDataContext();
        
         

        if (manager.Checked)
        {
            var id = db.validmanageruserpass(Login1.UserName,Login1.Password);
            if (id.Count() > 0)
            {
                
                Response.Redirect("manager.aspx");
            }
        }
        else
        if (staff.Checked)
        {
            int id = db.validstaffuserpass(Login1.UserName, Login1.Password).First().st_id;
            if (id != 0)
            {
                Session["stid"] = id;
                Response.Redirect("staff.aspx");
            }
        }
        else
        if (supervisor.Checked)
        {
            int id = db.validsupervisoruserpass(Login1.UserName, Login1.Password).First().sup_id;
            if (id != 0)
            {
                Session["supid"] = id;
                Response.Redirect("supervisor.aspx");
            }
        }

        else
        if (receptionist.Checked)
        {
            int id = db.validreceptionistuserpass(Login1.UserName, Login1.Password).First().recep_id;
            if (id != 0)
            {
                Session["rid"] = id;    
                Response.Redirect("receptionist.aspx");
            }
        }

        

    }
    
}