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
        string checkuser = "select * from RegisteRC where Email_id='" + TextBox1.Text + "' ";
        SqlCommand cmd = new SqlCommand(checkuser, dbcon);
        SqlDataReader rd = cmd.ExecuteReader();
        
        if (rd.HasRows)
        {
            dbcon.Close();
           dbcon.Open();
            string checkpass = "select Password from RegisteRC where Email_id='" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(checkpass, dbcon);
            String pass = cmd1.ExecuteScalar().ToString();
            if (pass == TextBox2.Text) {
                
                Session["username"] = TextBox1.Text;
                Response.Write("<script LANGUAGE='JavaScript' >alert('Login successfully')</script>");
                Response.Redirect("~/home.aspx");
            }
            else
                Response.Write("password is not correct");
            //dbcon.Close();
        }
        else
            Response.Write("<script LANGUAGE='JavaScript' >alert('User not found')</script>");

            dbcon.Close();

        }
    


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisteRC.aspx");
    }
}