using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sellerhm : System.Web.UI.Page
{
    static String imagelink;

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                //string query = "insert into [cloth] (productname,Price,productimage) values( @productname,@Price,@productimage)";
                SqlConnection mycon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
                mycon.Open();
            
            SqlCommand cmd = new SqlCommand("insert into [cloth] (productname,Price,productimage) values( @productname,@Price,@productimage)", mycon);
          
            cmd.Parameters.AddWithValue("@productname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Price",TextBox2.Text);
            cmd.Parameters.AddWithValue("@productimage",imagelink);

         
             TextBox1.Text = "";
            TextBox2.Text = "";

            cmd.ExecuteNonQuery();
            mycon.Close();
            Label3.Text = "Product Has Been Successfully Saved";
            Label3.ForeColor = System.Drawing.Color.Green;

        }

        }
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

          
            if (contenttype == "image/jpeg")
                {

                FileUpload1.SaveAs(Server.MapPath("img/cloth/") + TextBox1.Text + ".jpg");
                imagelink = "img/cloth/" +TextBox1.Text+".jpg";
                imagesaved = true;
                }
                else
                {
                    Label3.Text = "Kindly Upload JPEG Format Image Only";
                    Label3.ForeColor = System.Drawing.Color.Red;
            }

            }

            else
            {
                Label3.Text = "You have not selected any file - Browse and Select File First";
                Label3.ForeColor = System.Drawing.Color.Red;
        }

            return imagesaved;

        }
    public void getproductid()
    {
        String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select productid from cloth";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
      



            String mycon1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(productId) from cloth";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label3.Text = ds1.Tables[0].Rows[0][0].ToString();
          
            scon1.Close();
     }

    }