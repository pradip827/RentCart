using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class forgot_seller : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();

    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        dbcon.Open();
        string checkuser = "select * from seller where Email_id='" + TextBox1.Text + "' ";
        SqlCommand cmd = new SqlCommand(checkuser, dbcon);
        SqlDataReader rd = cmd.ExecuteReader();
        try { 
        if (rd.HasRows)
        {
            dbcon.Close();
            dbcon.Open();
            String checkquestions = "select Tv from seller where Email_id='" + TextBox1.Text + "'";
            String checkquestions1 = "select Grandmother from seller where Email_id='" + TextBox1.Text + "'";
            String checkquestions2 = "select Edecution from seller where Email_id='" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(checkquestions, dbcon);
            SqlCommand cmd2 = new SqlCommand(checkquestions, dbcon);
            SqlCommand cmd3 = new SqlCommand(checkquestions, dbcon);
            String tv = cmd1.ExecuteScalar().ToString();
            String gm = cmd2.ExecuteScalar().ToString();
            String edu = cmd3.ExecuteScalar().ToString();
            if (tv == TextBox2.Text && gm == TextBox3.Text && edu == TextBox4.Text)
            {
                string checkpass = "select Password from seller where Email_id='" + TextBox1.Text + "'";
                SqlCommand cmd4 = new SqlCommand(checkpass, dbcon);
                String pass = cmd4.ExecuteScalar().ToString();
                //rd.Read();
                Label1.Text = "Your password is:" + "&nbsp" + pass.ToString() + "&nbsp &nbsp" + "please remember your password";
            }
            else { Response.Write("<script LANGUAGE='JavaScript' >alert('Wrong answers')</script>"); }
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('User not found')</script>");
        }
        }
        catch(Exception)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('some thing went wrong please try again')</script>");
        }
    }
}