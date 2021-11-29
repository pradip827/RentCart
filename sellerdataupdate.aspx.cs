using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class sellerdataupdate : System.Web.UI.Page
{
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        TextBox5.Enabled = false;
        TextBox6.Enabled = false;
        TextBox7.Enabled = false;
        TextBox8.Enabled = false;
        Button3.Visible = false;
        Button1.Visible = false;
        if (!IsPostBack)
        {
            info();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";

        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        TextBox5.Enabled = true;
        TextBox6.Enabled = true;
        TextBox7.Enabled = true;
        TextBox8.Enabled = true;
        Button3.Visible = true;
        Button1.Visible = true;
        Button2.Visible = false;
    }

protected void info()
{
    dbcon.Open();
        SqlCommand cmd = new SqlCommand("seller_procedure", dbcon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@opr", "login");
        cmd.Parameters.AddWithValue("@Email_ID", Session["username"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);


        DataSet ds = new DataSet();

    da.Fill(ds);

    TextBox1.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
    TextBox2.Text = ds.Tables[0].Rows[0]["Last_Name"].ToString();
    TextBox3.Text = ds.Tables[0].Rows[0]["Email_id"].ToString();
    TextBox4.Text = ds.Tables[0].Rows[0]["Contact_no"].ToString();
    TextBox8.Text = ds.Tables[0].Rows[0]["Address"].ToString();
    TextBox5.Text = ds.Tables[0].Rows[0]["Tv"].ToString();
    TextBox6.Text = ds.Tables[0].Rows[0]["Grandmother"].ToString();
    TextBox7.Text = ds.Tables[0].Rows[0]["Edecutation"].ToString();

    dbcon.Close();
}
protected void Button1_Click(object sender, EventArgs e)
    {
        dbcon.Open();
        SqlCommand cmd = new SqlCommand("seller_procedure", dbcon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@opr", "update_profile");

        cmd.Parameters.AddWithValue("@First_Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Contact_no", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Email_ID", Session["username"]);
        cmd.Parameters.AddWithValue("@Address", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Tv", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Grandmother", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Edecutation", TextBox7.Text);
        cmd.ExecuteNonQuery();
        Response.Write("alert('Record Updated successfully')");
        cmd.Dispose();
        dbcon.Close();
        Response.Write("<script LANGUAGE='JavaScript' >alert('Data updated Successful')</script>");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}