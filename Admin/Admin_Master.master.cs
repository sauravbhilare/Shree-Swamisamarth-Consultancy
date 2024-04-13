using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["ID"] != null)
            {
                lbluserid.Text = Request.Cookies["ID"].Value;

            }
            else
            {
                // Handle case when cookies are not present or expired
                // For example, redirect to the login page
                Response.Redirect("../Login.aspx");
            }
        }
    }
    protected void lnkbtn_Click(object sender, EventArgs e)
    {
        // Expire or remove cookies
        if (Request.Cookies["ID"] != null)
        {
            Response.Cookies["ID"].Expires = DateTime.Now.AddDays(-1); // Expire the cookie
        }
        Response.Redirect("/Login.aspx");
    }
}
