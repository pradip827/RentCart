using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserProfile : System.Web.UI.Page
{
   
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(! IsPostBack){
           
        }
       dbcon.Open();
        string selectCmd = "select * from RegisteRC where Email_id='" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(selectCmd, dbcon);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        

        DataSet ds = new DataSet();

        da.Fill(ds);

        TextBox1.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
        TextBox2.Text = ds.Tables[0].Rows[0]["Last_Name"].ToString();
        TextBox3.Text = ds.Tables[0].Rows[0]["Email_id"].ToString();
        TextBox4.Text = ds.Tables[0].Rows[0]["Contact_no"].ToString();
        TextBox8.Text=ds.Tables[0].Rows[0]["Address"].ToString();
        TextBox5.Text = ds.Tables[0].Rows[0]["Tv"].ToString();
        TextBox6.Text = ds.Tables[0].Rows[0]["Grandmother"].ToString();
        TextBox7.Text = ds.Tables[0].Rows[0]["Edecutation"].ToString();

        dbcon.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        dbcon.Open();
        SqlCommand cmd = new SqlCommand("UPDATE  RegisteRC SET  First_Name=@First_Name,Last_Name=@Last_Name,Contact_no=@Contact_no,Email_ID=@Email_ID,Address=@Address,Tv=@Tv,Grandmother=@Grandmother,Edecutation=@Edecutation where ='" + Session["username"] + "', dbcon");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        //DataTable DT = new DataTable(RegisteRc);
       cmd.Parameters.AddWithValue("@First_Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Contact_no", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Email_ID", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Tv", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Grandmother", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Edecutation", TextBox7.Text);
       
        da.Fill(ds);
        //cmd.ExecuteNonQuery();
        dbcon.Close();
    }
}