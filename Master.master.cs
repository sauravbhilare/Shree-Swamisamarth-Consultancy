using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master : System.Web.UI.MasterPage
{
    static String strcon = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection con = new SqlConnection(strcon);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindrpt();
        }
    }

    public void bindrpt()
    {
        cmd = new SqlCommand("SELECT ID, Service_Name FROM [shreeswamisamarth].[Add_Service]", con);


       
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        try
        {
            con.Open();
            adapter.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                ServicesRepeater.DataSource = dt;
                ServicesRepeater.DataBind();
            }

        }
        catch (Exception ex)
        {
            // Handle exception
        }
        finally
        {
            con.Close();
        }

    }
}
