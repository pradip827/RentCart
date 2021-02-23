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
    protected void Page_Load(object sender, EventArgs e)
    {
       // if (!IsPostBack)
        //{
       //     getproductid();
      //  }
    //
    }


  

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                string query = "insert into cloth (productid,productname,Price,productimage) values(" + Label2.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + imagelink + "')";
                SqlConnection mycon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
                mycon.Open();
                SqlCommand cmd = new SqlCommand(query, mycon);

                //cmd.CommandText = query;
                //cmd.Connection = con;

                Label3.Text = "Product Has Been Successfully Saved";
                //getproductid();
                TextBox1.Text = "";
                TextBox2.Text = "";
                //cmd.ExecuteNonQuery();
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

                    FileUpload1.SaveAs(Server.MapPath("~/img/") + Label3.Text + ".jpg");
                    imagelink = "img/" + Label3.Text + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label3.Text = "Kindly Upload JPEG Format Image Only";
                }

            }

            else
            {
                Label3.Text = "You have not selected any file - Browse and Select File First";
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
       // if (ds.Tables[0].Rows.Count < 1)
       // {
         //   Label3.Text = "1001";

        //}
       // else
       // {



            String mycon1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(productid) from productdetail";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label3.Text = ds1.Tables[0].Rows[0][0].ToString();
           // int a;
          //  a = Convert.ToInt16(Label3.Text);
          //  a = a + 1;
           // Label3.Text = a.ToString();
            scon1.Close();
     }

    }