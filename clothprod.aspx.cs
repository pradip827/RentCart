using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class clothprod : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if(Session["username"]==null)
        {
            Response.Redirect("login.aspx");
        }
        else if(e.CommandName == "addtocart")
        {

            //DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString());

        }
    }


}
