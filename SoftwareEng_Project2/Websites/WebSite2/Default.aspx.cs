﻿using System;
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
        if (manager.Checked)
        {
            Response.Redirect("manager.aspx");
        }
        if (staff.Checked)
        {
            Response.Redirect("staff.aspx");
        }
        if (supervisor.Checked)
        {
            Response.Redirect("supervisor.aspx");
        }
        if (receptionist.Checked)
        {
            Response.Redirect("receptionist.aspx");
        }
    }
    
}