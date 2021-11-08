using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class sellerreg : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        dbcon.Open();
        SqlCommand cmd = new SqlCommand("Select * from seller where Email_Id= '" + TextBox4.Text + "'", dbcon);
        cmd.Parameters.AddWithValue("@Email_Id", this.TextBox4.Text);

        var result = cmd.ExecuteScalar();
        if (result != null)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Email_ Id alrady exist')</script>");
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("select CONVERT(varchar(32), HASHBYTES('MD5', '" + TextBox5.Text + "'), 2)", dbcon);
            String password = cmd2.ExecuteScalar().ToString();
            SqlCommand cmd1 = new SqlCommand("Insert into seller" + "([First_Name],[Last_Name],[Contact_no],[Email_Id],[Password],[Address],[Tv],[Grandmother],[Edecutation]) values (@First_Name,@Last_Name,@Contact_no,@Email_Id,@Password,@Address,@Tv,@Grandmother,@Edecutation)", dbcon);
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
            Response.Write("<script LANGUAGE='JavaScript' >alert('Register successfully')</script>");
            Response.Redirect("sellerlogin.aspx");  //(main code hia ye)
        }
    }
}