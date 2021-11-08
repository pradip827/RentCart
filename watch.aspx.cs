using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class watch : System.Web.UI.Page
{


    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else if (e.CommandName == "addtocart")
        {

            //DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("wCart.aspx?id=" + e.CommandArgument.ToString());

        }
    }


}