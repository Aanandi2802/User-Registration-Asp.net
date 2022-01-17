using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Experiment6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<b>" + "ENTERED DATA: " + "</b>" + "</br>" + "</br>");
        String fn = Convert.ToString(TextBox1.Text);
        Response.Write("First Name: " + fn + "</br>");

        String ln = Convert.ToString(TextBox2.Text);
        Response.Write("Last Name: " + ln + "</br>");

        String sem = Convert.ToString(TextBox3.Text);
        Response.Write("Semester: " + sem + "</br>");

        String mn = Convert.ToString(TextBox4.Text);
        Response.Write("Mobile No: " + mn + "</br>");

        String age = Convert.ToString(TextBox5.Text);
        Response.Write("Age: " + age + "</br>");

        String hgt = Convert.ToString(TextBox6.Text);
        Response.Write("Height: " + hgt + "</br>");

        string selectedValue = RadioButtonList1.SelectedValue;
        Response.Write("Marital Status: " + selectedValue + "</br>");

        string hb = "";
        foreach (ListItem L1 in CheckBoxList1.Items)
        {
            if (L1.Selected == true)
            {
                hb = hb + L1.Text + ", ";
            }
        }
        Response.Write("Hobbies: " + hb);
        Response.Write("</br>");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox7.Text = (Convert.ToString(Calendar1.SelectedDate.ToLongDateString()));
        if(Convert.ToString(Calendar1.SelectedDate.ToShortDateString())=="26-07-2021")
        {
            Label10.Text = ("26 July : Aash's Birthday!!!");
        }
        else
        {
            Label10.Text = ("");

        }
    }


    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        String a = Calendar1.SelectedDate.ToLongDateString();
        if (e.Day.Date.ToShortDateString() == "09-07-2021")
        {
            HyperLink l = new HyperLink();
            l.NavigateUrl = "~/exp6_1.aspx";
            l.Text = "Result";
            e.Cell.Controls.Add(l);
            e.Day.IsSelectable = true;
        }
        if (e.Day.Date == new DateTime(2021, 7, 26))
        {
            e.Cell.ForeColor = System.Drawing.Color.Blue;
        }
    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}