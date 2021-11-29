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
using System.Net;
using System.Net.Mail;
using System.Drawing;
//using System.Configuration;
//using System.Data.SqlClient;


public partial class passchng : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");

    protected void SendEmail(object sender, EventArgs e)
    {
        string username = string.Empty;
        string password = string.Empty;
       // string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
       // using (SqlConnection con = new SqlConnection(constr))
        SqlConnection dbcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        {
            using (SqlCommand cmd = new SqlCommand("register @opr=chng_pass,@Email_ID= @Email"))
            {
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Connection = dbcon;
                dbcon.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        username = sdr["Username"].ToString();
                        password = sdr["Password"].ToString();
                    }
                }
                dbcon.Close();
            }
        }
        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mm = new MailMessage("sender@gmail.com", txtEmail.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "sender@gmail.com";
            NetworkCred.Password = "<Password>";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lblMessage.ForeColor = Color.Green;
            lblMessage.Text = "Password has been sent to your email address.";
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "This email address does not match our records.";
        }
    }
}