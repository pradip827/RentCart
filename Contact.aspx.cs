using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System;
using System.Net.Mail;

public partial class Contect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = false;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new
                System.Net.NetworkCredential("chauhanprd@gmail.com", "blackapple1999");

            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("chauhanprd@gmail.com");
            mailMessage.To.Add(TextBox2.Text);
            mailMessage.Subject = "RentCart user qa";

            mailMessage.Body = "<b>Sender Name : </b>" + TextBox1.Text + "<br/>"
                + "<b>Sender Email : </b>" + TextBox2.Text + "<br/>"
                + "<b>Comments : </b>" + TextBox4.Text;
            mailMessage.IsBodyHtml = true;
            smtpClient.Send(mailMessage);

            Label1.ForeColor = System.Drawing.Color.Blue;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('measage has been send ');", true);
            Label1.Text = "Thank you for contacting us We will back to you in while";

            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox4.Enabled = false;
            //DropDownList1.Enabled = false;
            Button1.Enabled = false;

        }
        catch (Exception ex)
        {
            // Log the exception information to 
            // database table or event viewer
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "There is an unknown problem. Please try later";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {


            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = false;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new
                System.Net.NetworkCredential("chauhanprd@gmail.com", "blackapple1999");

            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("chauhanprd@gmail.com");
            mailMessage.To.Add(TextBox2.Text);
            mailMessage.Subject = "Questions from rentcart user";

            mailMessage.Body = "<b>Sender Name : </b>" + TextBox1.Text + "<br/>"
                + "<b>Sender Email : </b>" + TextBox2.Text + "<br/>"
                + "<b>Comments : </b>" + TextBox4.Text;
            mailMessage.IsBodyHtml = true;
            smtpClient.Send(mailMessage);

            Label1.ForeColor = System.Drawing.Color.Blue;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('measage has been send ');", true);
            Label1.Text = "Thank you for contacting us We will back to you in while";

            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox4.Enabled = false;
           
            Button1.Enabled = false;

        }
        catch (Exception ex)
        {
            // Log the exception information to 
            // database table or event viewer
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "This servie is not start yet please try again latter";
        }
    }
}