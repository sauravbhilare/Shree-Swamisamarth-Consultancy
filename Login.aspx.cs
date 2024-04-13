using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        try
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("Select * from [shreeswamisamarth].[Login] where  Username='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (txtusername.Text.Equals(dr["Username"].ToString(), StringComparison.OrdinalIgnoreCase) && txtpassword.Text == dr["Password"].ToString())
                    {

                        // Store values in cookies
                        Response.Cookies["ID"].Value = dr["ID"].ToString();
                     
                        Response.Redirect("Admin/Add_Services.aspx", true);


                    }
                }

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Credential...!');", true);
            }


        }
        catch (Exception ex)
        {
            ex.ToString();

        }
        finally
        {
            con.Close();
        }
    }
}