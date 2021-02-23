using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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
        SqlCommand cmd = new SqlCommand("Insert into RegisteRC" + "([First_Name],[Last_Name],[Contact_no],[Email_Id],[Password],[Address],[Tv],[Grandmother],[Edecutation]) values (@First_Name,@Last_Name,@Contact_no,@Email_Id,@Password,@Address,@Tv,@Grandmother,@Edecutation)", dbcon);
        cmd.Parameters.AddWithValue("@First_Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Contact_no", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Email_Id", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Tv", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Grandmother", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Edecutation", TextBox10.Text);
        cmd.ExecuteNonQuery();


        dbcon.Close();
        Response.Write("<script LANGUAGE='JavaScript' >alert('Register successfully')</script>");
        Response.Redirect("home.aspx");  //(main code hia ye)
    }


}
