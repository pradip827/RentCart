using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class chnfpass : System.Web.UI.Page
{
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");

    protected void Button1_Click(object sender, EventArgs e)
    {
        string pp = TextBox1.Text;
        string pass = TextBox2.Text;
        dbcon.Open();
        string qry = "select * from RegisteRc where Email_ID='" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(qry, dbcon);

        SqlDataAdapter SQLAdapter = new SqlDataAdapter(cmd);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);

        if (DT.Rows.Count == 0)
        {
            Label1.Text = "Invalid current password";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("update RegisteRC set Password='" + TextBox3.Text + "' where Password= '" + TextBox1.Text + "'", dbcon);
            SqlDataAdapter SQLAdapter1 = new SqlDataAdapter(cmd1);
            SQLAdapter1.Fill(DT);
            Label1.Text = "Password changed successfully";
            Response.Write("<script LANGUAGE='JavaScript' >alert('Password Change Successful')</script>");
            Label1.ForeColor = System.Drawing.Color.Green;

        }
    }
}