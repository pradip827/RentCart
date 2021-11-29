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
        //string checkuser = "register @opr=login,@Email_id='" + TextBox1.Text + "' ";
        SqlCommand cmd = new SqlCommand("register", dbcon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@opr", "login");
        cmd.Parameters.AddWithValue("@Email_ID", TextBox1.Text  );

        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            dbcon.Close();
            dbcon.Open();
            SqlCommand cmd1 = new SqlCommand("register", dbcon);
            cmd1.CommandType = CommandType.StoredProcedure;

            cmd1.Parameters.AddWithValue("@opr", "password");
            cmd1.Parameters.AddWithValue("@Email_ID", TextBox1.Text);

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