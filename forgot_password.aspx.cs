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


public partial class forgot_password : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
  

    protected void Button1_Click1(object sender, EventArgs e)
    {
        dbcon.Open();
        string checkuser = "select * from RegisteRC where Email_ID='" + TextBox1.Text + "' ";
        SqlCommand cmd = new SqlCommand(checkuser, dbcon);
        SqlDataReader rd = cmd.ExecuteReader();
        
        
        if (rd.HasRows)
        {
            dbcon.Close();
            dbcon.Open();
            String checkquestions= "select Tv from RegisteRC where Email_id='" + TextBox1.Text + "'";
            String checkquestions1 = "select Grandmother from RegisteRC where Email_id='" + TextBox1.Text + "'";
            String checkquestions2 = "select Edecutation from RegisteRC where Email_id='" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(checkquestions, dbcon);
            SqlCommand cmd2 = new SqlCommand(checkquestions1, dbcon);
            SqlCommand cmd3 = new SqlCommand(checkquestions2, dbcon);

            String tv = cmd1.ExecuteScalar().ToString();
            String gm = cmd2.ExecuteScalar().ToString();
            String edu = cmd3.ExecuteScalar().ToString();
            

            if (tv == TextBox2.Text && gm==TextBox3.Text && edu == TextBox4.Text)
            {
                change_password.Visible = true;
            }
            else {
                Response.Write("<script LANGUAGE='JavaScript' >alert('answers Dose not match')</script>");
            }
            dbcon.Close();
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('User not found Please Enter Valid Email id')</script>");
        }
        rd.Close();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        change_password.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == TextBox6.Text)
        {
            dbcon.Open();
            SqlCommand cmd2 = new SqlCommand("select CONVERT(varchar(32), HASHBYTES('MD5', '" + TextBox6.Text + "'), 2)", dbcon);
            String password = cmd2.ExecuteScalar().ToString();
            string checkuser = "UPDATE RegisteRC SET Password = '" + password + "' where Email_ID='" + TextBox1.Text + "' ";
            SqlCommand cmd = new SqlCommand(checkuser, dbcon);
            cmd.ExecuteNonQuery();
            dbcon.Close();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Password Chnage Sucesfully' )</script>");
        }
        else{
            Response.Write("<script LANGUAGE='JavaScript' >alert('Password Dosen not match')</script>");
        }

    }
}