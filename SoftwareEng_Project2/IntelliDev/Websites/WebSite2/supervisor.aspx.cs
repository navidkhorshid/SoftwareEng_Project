using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class supervisor : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {



    ////////////////////////////////////////////////////////////////
    //GridViewRow[] rowArray = new GridViewRow[gv.Rows.Count];
    //gv.Rows.CopyTo(rowArray, 0);

    //int j = -1;
    //foreach (GridViewRow row in rowArray)
    //{
    //    j++;
    //    if (j == idx)
    //    {
    //    Label1.Text = row.Cells[1].Text;
    //    }
    //}
    ////////////////////////////////////////////////////////////////

        if (GridView1.SelectedIndex != -1)
        {

            int receptionid = 0;
        //GridViewRow row = GridView1.SelectedRow;
        //receptionid = convert.toint16(row.Cells[0].text);

            GridViewRow[] rowArray = new GridViewRow[GridView1.Rows.Count];
            GridView1.Rows.CopyTo(rowArray, 0);
            int j = -1;
            foreach (GridViewRow row in rowArray)
            {
                j++;
                if (j == GridView1.SelectedRow.RowIndex) 
                {
                    receptionid = Convert.ToInt16(row.Cells[1].Text);
                }   
            }

            int sid = (int)Session["supid"];
            Session["supid"] = sid;
            Session["recepid"] = receptionid;
            Response.Redirect("srecclick.aspx");
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}