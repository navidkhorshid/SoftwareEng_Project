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

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var id = from c in db.CLERKs
                 where (c.CLERK_PROFESSION == 3 && c.CLERK_USERNAME == username.Text && c.CLERK_PASSWORD == password.Text)
                 select c.CLERK_ID;

        if (id.Count() > 0)
            Response.Redirect("choose3.aspx");
        else
            Response.Write("<script>alert('Wrong Username or Password.')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        username.Text = string.Empty;
        password.Text = string.Empty;
    }
}