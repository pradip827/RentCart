using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

public partial class login : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");



    protected void Button1_Click(object sender, EventArgs e)
    {
        dbcon.Open();
        string checkuser = "login1 @User='" + TextBox1.Text + "' ";
        SqlCommand cmd = new SqlCommand(checkuser, dbcon);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            dbcon.Close();
            dbcon.Open();
            string checkpass = "checkpass @Pass='" + TextBox1.Text + "'";

            SqlCommand cmd1 = new SqlCommand(checkpass, dbcon);
            SqlCommand cmd2 = new SqlCommand("select CONVERT(varchar(32), HASHBYTES('MD5', '" + TextBox2.Text + "'), 2)", dbcon);
            String password = cmd2.ExecuteScalar().ToString();
            String pass = cmd1.ExecuteScalar().ToString();
            if (pass == password)
            {

                Session["username"] = TextBox1.Text;
                Response.Write("<script LANGUAGE='JavaScript' >alert('Login successfully')</script>");
                Response.Redirect("~/home.aspx");
            }
            else
                Response.Write("<script LANGUAGE='JavaScript' >alert('userid or password is wrong')</script>");
            //dbcon.Close();
        }
        else
            Response.Write("<script LANGUAGE='JavaScript' >alert('User not found')</script>");

        dbcon.Close();

    }


}