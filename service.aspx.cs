using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class service : System.Web.UI.Page
{
    static String strcon = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection con = new SqlConnection(strcon);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                string serviceID = Request.QueryString["id"];
                lblsid.Text = serviceID;
            }
            bindrpt();
        }
    }

    public void bindrpt()
    {
        cmd = new SqlCommand("SELECT * FROM [shreeswamisamarth].[Add_Service] where ID='" + lblsid.Text+"'", con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        try
        {
            con.Open();
            adapter.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                CarouselRepeater.DataSource = dt;
                CarouselRepeater.DataBind();
            }

        }
        catch (Exception ex)
        {
            // Handle exception
        }
        finally
        {
            con.Close();
            bindrpt1();
        }

    }

    public void bindrpt1()
    {
        cmd = new SqlCommand("SELECT * FROM [shreeswamisamarth].[Add_Service] where ID='" + lblsid.Text + "'", con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        try
        {
            con.Open();
            adapter.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                rpt1.DataSource = dt;
                rpt1.DataBind();
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
    protected void rpt1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataRowView drv = e.Item.DataItem as DataRowView;
            if (drv != null)
            {
                // Hide feature divs if they have no data
                HideFeatureIfEmpty(drv, "Feature1", e);
                HideFeatureIfEmpty(drv, "Feature2", e);
                HideFeatureIfEmpty(drv, "Feature3", e);
                HideFeatureIfEmpty(drv, "Feature4", e);
                // Add more if needed for additional features
            }
        }
    }

    private void HideFeatureIfEmpty(DataRowView drv, string featureName, RepeaterItemEventArgs e)
    {
        HtmlGenericControl featureDiv = (HtmlGenericControl)e.Item.FindControl(featureName);
        string featureValue = drv[featureName].ToString();
        if (string.IsNullOrEmpty(featureValue))
        {
            featureDiv.Visible = false;
        }
    }
}