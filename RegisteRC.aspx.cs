using System;
using System.Data;
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
        //SqlCommand cmd = new SqlCommand("login1 @User= '" + TextBox4.Text + "'", dbcon);
        SqlCommand cmd = new SqlCommand("register ", dbcon);

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@opr", "login");
        cmd.Parameters.AddWithValue("@Email_ID", TextBox4.Text);
      

        var result = cmd.ExecuteScalar();
        if (result != null)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Email_ Id alrady exist')</script>");
        }
        else
        {
            SqlCommand cmd2 =new SqlCommand( "select CONVERT(varchar(32), HASHBYTES('MD5', '"+TextBox5.Text +"'), 2)", dbcon);
            String password = cmd2.ExecuteScalar().ToString();

            SqlCommand cmd1 = new SqlCommand("register", dbcon);

            cmd1.CommandType = CommandType.StoredProcedure;

            cmd1.Parameters.AddWithValue("@opr", "insert");

            cmd1.Parameters.AddWithValue("@First_Name", TextBox1.Text);
            cmd1.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@Contact_no", TextBox3.Text);
            cmd1.Parameters.AddWithValue("@Email_Id", TextBox4.Text);
            cmd1.Parameters.AddWithValue("@Password", password);
            cmd1.Parameters.AddWithValue("@Address", TextBox6.Text);
            cmd1.Parameters.AddWithValue("@Tv", TextBox8.Text);
            cmd1.Parameters.AddWithValue("@Grandmother", TextBox9.Text);
            cmd1.Parameters.AddWithValue("@Edecutation", TextBox10.Text);
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