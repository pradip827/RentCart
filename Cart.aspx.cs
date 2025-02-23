﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Cart : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("ProductId");
            dt.Columns.Add("ProductName");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Price");
            dt.Columns.Add("TotalPrice");
            dt.Columns.Add("ProductImage");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "cloths_procedure @opr=select_id, @productId=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd; 
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["ProductId"] = ds.Tables[0].Rows[0]["productId"].ToString();
                    dr["ProductName"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["ProductImage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                   // dr["Quantity"] = Request.QueryString["Quantity"];
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                    //int quantity = Convert.ToInt32(Request.QueryString["Quantity"].ToString());
                    //int totalprice = price * quantity;
                    dr["TotalPrice"] = price;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Cart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    //String myquery = "buycloth @Id=" + Request.QueryString["id"];

                    SqlCommand cmd = new SqlCommand("cloths_procedure", scon);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@opr", "select_id");
                    cmd.Parameters.AddWithValue("@productId", Request.QueryString["id"]);
                    //SqlCommand cmd = new SqlCommand();
                    //cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["ProductId"] = ds.Tables[0].Rows[0]["productId"].ToString();
                    dr["ProductName"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["ProductImage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    //dr["Quantity"] = Request.QueryString["Quantity"];
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                    // int quantity = Convert.ToInt32(Request.QueryString["Quantity"].ToString());
                    int TotalPrice = price;
                    dr["TotalPrice"] = TotalPrice;
                    Label2.Text = TotalPrice.ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Cart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }
            Label1.Text = GridView1.Rows.Count.ToString();

        }

    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.AffectedRows].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("Cart.aspx");
    }


protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    DataTable dt = new DataTable();
    dt = (DataTable)Session["buyitems"];


    for (int i = 0; i <= dt.Rows.Count - 1; i++)
    {
        int sr;
        int sr1;
        string qdata;
        string dtdata;
        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
        TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
        qdata = cell.Text;
        dtdata = sr.ToString();
        sr1 = Convert.ToInt32(qdata);

        if (sr == sr1)
        {
            dt.Rows[i].Delete();
            dt.AcceptChanges();
            Label1.Text = "Item Has Been Deleted From Shopping Cart";
            break;

        }
    }

    for (int i = 1; i <= dt.Rows.Count; i++)
    {
        dt.Rows[i - 1]["sno"] = i;
        dt.AcceptChanges();
    }

    Session["buyitems"] = dt;
    Response.Redirect("Cart.aspx");
}


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("buynow.aspx");
    }
}