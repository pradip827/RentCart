using System;
using System.Data.SqlClient;



public partial class RegisteRC : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        dbcon.Open();
        SqlCommand cmd = new SqlCommand("login1 @User= '" + TextBox4.Text + "'", dbcon);
        cmd.Parameters.AddWithValue("@Email_Id", this.TextBox4.Text);

        var result = cmd.ExecuteScalar();
        if (result != null)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Email_ Id alrady exist')</script>");
        }
        else
        {
            SqlCommand cmd2 =new SqlCommand( "select CONVERT(varchar(32), HASHBYTES('MD5', '"+TextBox5.Text +"'), 2)", dbcon);
            String password = cmd2.ExecuteScalar().ToString();
           
            SqlCommand cmd1 = new SqlCommand("EXEC register @First_Name='" + TextBox1.Text + "',@Last_Name = '" + TextBox2.Text + "',@Contact_no = '" + TextBox3.Text + "',@Email_ID = '" + TextBox4.Text + "',@Password = '" + password + "',@Address = '" + TextBox6.Text + "',@Tv = '" + TextBox8.Text + "', @Grandmother = '" + TextBox9.Text + "',@Edecutation ='" + TextBox10.Text + "' ", dbcon);

            cmd1.ExecuteNonQuery();


            dbcon.Close();
            Response.Write("alert('Register successfully')");
            Response.Redirect("login.aspx");  //(main code hia ye)

        }

    }

    private object HashBytes(char v1, char v2)
    {
        throw new NotImplementedException();
    }
}