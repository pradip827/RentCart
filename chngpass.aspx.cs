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
        if (TextBox2.Text == TextBox3.Text)
        {
            string pp = TextBox1.Text;
            string pass = TextBox3.Text;
            dbcon.Open();
            SqlCommand cmd2 = new SqlCommand("select CONVERT(varchar(32), HASHBYTES('MD5', '" + TextBox1.Text + "'), 2)", dbcon);
            String password = cmd2.ExecuteScalar().ToString();
            string qry = "register @opr=password, @Email_ID='" + Session["username1"] + "'";
            SqlCommand cmd = new SqlCommand(qry, dbcon);
            String oldpass = cmd.ExecuteScalar().ToString();

            /* SqlDataAdapter SQLAdapter = new SqlDataAdapter(cmd);
             DataTable DT = new DataTable();
             SQLAdapter.Fill(DT);*/
           // Response.Write("<script LANGUAGE='JavaScript' >alert('"+oldpass+"   "+password+"')</script>");

            if (oldpass != password)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Current Password')</script>");

            }
            else
            {
                SqlCommand cmd3 = new SqlCommand("select CONVERT(varchar(32), HASHBYTES('MD5', '" + TextBox3.Text + "'), 2)", dbcon);
                String password1 = cmd3.ExecuteScalar().ToString();
		
                SqlCommand cmd1 = new SqlCommand("register @opr=chng_pass , @Password='" + password1 + "', @Email_ID='" + Session["username1"] + "'", dbcon);
                cmd1.ExecuteNonQuery();


                Response.Write("<script LANGUAGE='JavaScript' >alert('Password Change Successful')</script>");
                

            }
        }
    }
}