using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stask : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

        GridViewRow[] rowArray = new GridViewRow[GridView1.Rows.Count];
        GridView1.Rows.CopyTo(rowArray, 0);
        
        foreach (GridViewRow row in rowArray)
        {
            Button Button2 = (Button)row.FindControl("Button2");
            Button2.Enabled = false;
        }

        int staid = (int)Session["stid"];
        Session["stid"] = staid;
    }
    protected void GridView1_RowCommand(object sender,GridViewCommandEventArgs e)
    {
        if (e.CommandName == "starttask")
        {
            //// Retrieve the row index stored in the 
            //// CommandArgument property.
            int index = Convert.ToInt32(e.CommandArgument);
            // Retrieve the row that contains the button 
            // from the Rows collection.
            GridViewRow row = GridView1.Rows[index];

            Button Button1 = (Button)row.FindControl("Button1");
            Button1.Enabled = false;

            Button Button2 = (Button)row.FindControl("Button2");
            Button2.Enabled = true;

            ////disable other starts
            GridViewRow[] rowArray = new GridViewRow[GridView1.Rows.Count];
            GridView1.Rows.CopyTo(rowArray, 0);

            foreach (GridViewRow r in rowArray)
            {
                if (r.RowIndex != rowArray[index].RowIndex)
                {
                    Button Button11 = (Button)r.FindControl("Button1");
                    Button11.Enabled = false;
                }
            }
            ////

            int pid = Convert.ToInt16(row.Cells[0].Text);
            int reccode = Convert.ToInt16(row.Cells[4].Text);

            var lap = from r in db.receptions
                      where (r.rec_code == reccode)
                      select r.lap_serial;
            DateTime saveNow = DateTime.Now;

            db.updatelapprobstart(lap.First().ToString(), pid, saveNow);
            TextBox1.Enabled = true;
            // Add code here to add the item to the shopping cart.
        }

        if (e.CommandName == "finishtask")
        {
            //// Retrieve the row index stored in the 
            //// CommandArgument property.
            int index = Convert.ToInt32(e.CommandArgument);
            // Retrieve the row that contains the button 
            // from the Rows collection.
            GridViewRow row = GridView1.Rows[index];

            Button Button2 = (Button)row.FindControl("Button2");
            Button2.Enabled = false;

            ////enable other starts
            GridViewRow[] rowArray = new GridViewRow[GridView1.Rows.Count];
            GridView1.Rows.CopyTo(rowArray, 0);

            foreach (GridViewRow r in rowArray)
            {
                if (r.RowIndex != rowArray[index].RowIndex)
                {
                    Button Button11 = (Button)r.FindControl("Button1");
                    Button11.Enabled = true;
                }
            }
            ////

            int pid = Convert.ToInt16(row.Cells[0].Text);
            int reccode = Convert.ToInt16(row.Cells[4].Text);

            var lap = from r in db.receptions
                      where (r.rec_code == reccode)
                      select r.lap_serial;
            var desc = from stf in db.st_forms
                       where(stf.rec_code == reccode)
                       select stf.st_desc;

            DateTime saveNow = DateTime.Now;

            db.updatestformstaffdesc(reccode, desc.First().ToString() + " - " + TextBox1.Text.ToString());
            db.updatelapprobfinish(lap.First().ToString(), pid, saveNow);
            TextBox1.Enabled = false;
            TextBox1.Text = "";
            GridView1.DataBind();
            //for reload
            GridViewRow[] rowArr = new GridViewRow[GridView1.Rows.Count];
            GridView1.Rows.CopyTo(rowArr, 0);

            foreach (GridViewRow ro in rowArr)
            {
                Button Button22 = (Button)ro.FindControl("Button2");
                Button22.Enabled = false;
            }
            // Add code here to add the item to the shopping cart.
        }

    }
}