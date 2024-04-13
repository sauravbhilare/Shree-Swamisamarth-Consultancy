using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Services : System.Web.UI.Page
{
    static String strcon = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    SqlConnection con = new SqlConnection(strcon);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ServicesId"] != null && Request.QueryString["ServicesId"] != String.Empty)
            {
                lblServicesId.Text = Request.QueryString["ServicesId"];
                Bind();
                btnadd.Text = "Update";

            }
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        string f1 = "", f2 = "", f3 = "", f4 = "";
        string fileName = string.Empty;
        Random r = new Random();
        bool IsValidFile = false;
        if (btnadd.Text == "Add Service")
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO [shreeswamisamarth].[Add_Service]([Service_Name],[Image1],[Image2],[Image3],[Image4],[Description],[Feature1],[Feature1_Desc],[Feature2],[Feature2_Desc],[Feature3],[Feature3_Desc],[Feature4],[Feature4_Desc])VALUES(@Service_Name,@Image1,@Image2,@Image3,@Image4,@Description,@Feature1,@Feature1_Desc,@Feature2,@Feature2_Desc,@Feature3,@Feature3_Desc,@Feature4,@Feature4_Desc)", con);
                cmd.Parameters.AddWithValue("@Service_Name", txttitle.Text);
                //Image1
                if (image1.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image1.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image1.FileName;
                    //f1 = ID + fileName;
                    f1 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image1.SaveAs(Server.MapPath("/Admin/Image1/" + f1));
                        cmd.Parameters.AddWithValue("@Image1", f1);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image1 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image1", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image1", "");
                }

                //Image2
                if (image2.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image2.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image2.FileName;
                    //f1 = ID + fileName;
                    f2 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image2.SaveAs(Server.MapPath("/Admin/Image2/" + f2));
                        cmd.Parameters.AddWithValue("@Image2", f2);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image2 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image2", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image2", "");
                }

                //Image3
                if (image3.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image3.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image3.FileName;
                    //f1 = ID + fileName;
                    f3 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image3.SaveAs(Server.MapPath("/Admin/Image3/" + f3));
                        cmd.Parameters.AddWithValue("@Image3", f3);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image3 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image3", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image3", "");
                }

                //Image4
                if (image4.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image4.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image4.FileName;
                    //f1 = ID + fileName;
                    f4 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image4.SaveAs(Server.MapPath("/Admin/Image4/" + f4));
                        cmd.Parameters.AddWithValue("@Image4", f4);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image4 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image4", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image4", "");
                }

                cmd.Parameters.AddWithValue("@Description", txtdec.Text);
                cmd.Parameters.AddWithValue("@Feature1", txtfeature1.Text);
                cmd.Parameters.AddWithValue("@Feature1_Desc", txtfea1desc.Text);
                cmd.Parameters.AddWithValue("@Feature2", txtfeature2.Text);
                cmd.Parameters.AddWithValue("@Feature2_Desc", txtfea2desc.Text);
                cmd.Parameters.AddWithValue("@Feature3", txtfeature3.Text);
                cmd.Parameters.AddWithValue("@Feature3_Desc", txtfea3desc.Text);
                cmd.Parameters.AddWithValue("@Feature4", txtfeature4.Text);
                cmd.Parameters.AddWithValue("@Feature4_Desc", txtfea4desc.Text);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Service Added successfully...!');", true);
                txttitle.Text = "";
                txtdec.Text = "";
                txtfeature1.Text = "";
                txtfeature2.Text = "";
                txtfeature3.Text = "";
                txtfeature4.Text = "";
                txtfea1desc.Text = "";
                txtfea2desc.Text = "";
                txtfea3desc.Text = "";
                txtfea4desc.Text = "";
            }
            catch (Exception ex)
            {
                ex.ToString();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error Occard...!');", true);

            }
            finally
            {
                con.Close();
            }
        }
        else if (btnadd.Text == "Update")
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("UPDATE [shreeswamisamarth].[Add_Service]SET [Service_Name] = @Service_Name,[Image1] = @Image1,[Image2] = @Image2,[Image3] = @Image3,[Image4] = @Image4,[Description] = @Description,[Feature1] = @Feature1,[Feature1_Desc]=@Feature1_Desc,[Feature2] = @Feature2,[Feature2_Desc]=@Feature2_Desc,[Feature3] = @Feature3,[Feature3_Desc]=@Feature3_Desc,[Feature4] = @Feature4,[Feature4_Desc]=@Feature4_Desc WHERE [ID]=@ID", con);
                cmd.Parameters.AddWithValue("@ID", lblServicesId.Text);
                cmd.Parameters.AddWithValue("@Service_Name", txttitle.Text);
                //Image1
                if (image1.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image1.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image1.FileName;
                    //f1 = ID + fileName;
                    f1 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image1.SaveAs(Server.MapPath("/Admin/Image1/" + f1));
                        cmd.Parameters.AddWithValue("@Image1", f1);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image1 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image1", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image1", lblimg1.Text);
                }

                //Image2
                if (image2.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image2.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image2.FileName;
                    //f1 = ID + fileName;
                    f2 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image2.SaveAs(Server.MapPath("/Admin/Image2/" + f2));
                        cmd.Parameters.AddWithValue("@Image2", f2);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image2 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image2", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image2", lblimg2.Text);
                }

                //Image3
                if (image3.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image3.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image3.FileName;
                    //f1 = ID + fileName;
                    f3 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image3.SaveAs(Server.MapPath("/Admin/Image3/" + f3));
                        cmd.Parameters.AddWithValue("@Image3", f3);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image3 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image3", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image3", lblimg3.Text);
                }

                //Image4
                if (image4.HasFile)
                {
                    string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg", ".pdf" };
                    string extension = System.IO.Path.GetExtension(image4.PostedFile.FileName);

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (extension == validFileTypes[i])
                        {
                            IsValidFile = true;
                            break;
                        }
                    }
                    fileName = image4.FileName;
                    //f1 = ID + fileName;
                    f4 = r.Next(1, 10000) + fileName;
                    if (IsValidFile)
                    {
                        image4.SaveAs(Server.MapPath("/Admin/Image4/" + f4));
                        cmd.Parameters.AddWithValue("@Image4", f4);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Image4 File not valid');", true);
                        cmd.Parameters.AddWithValue("@Image4", "");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Image4", lblimg4.Text);
                }

                cmd.Parameters.AddWithValue("@Description", txtdec.Text);
                cmd.Parameters.AddWithValue("@Feature1", txtfeature1.Text);
                cmd.Parameters.AddWithValue("@Feature1_Desc", txtfea1desc.Text);
                cmd.Parameters.AddWithValue("@Feature2", txtfeature2.Text);
                cmd.Parameters.AddWithValue("@Feature2_Desc", txtfea2desc.Text);
                cmd.Parameters.AddWithValue("@Feature3", txtfeature3.Text);
                cmd.Parameters.AddWithValue("@Feature3_Desc", txtfea3desc.Text);
                cmd.Parameters.AddWithValue("@Feature4", txtfeature4.Text);
                cmd.Parameters.AddWithValue("@Feature4_Desc", txtfea4desc.Text);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Service Updated successfully...!');", true);
                txttitle.Text = "";
                txtdec.Text = "";
                txtfeature1.Text = "";
                txtfeature2.Text = "";
                txtfeature3.Text = "";
                txtfeature4.Text = "";
                txtfea1desc.Text = "";
                txtfea2desc.Text = "";
                txtfea3desc.Text = "";
                txtfea4desc.Text = "";
            }
            catch (Exception ex)
            {
                ex.ToString();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error Occard...!');", true);
            }
            finally
            {
                con.Close();
            }
        }
    }
    protected void Bind()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From [shreeswamisamarth].[Add_Service] where ID='" + lblServicesId.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            txttitle.Text = dr["Service_Name"].ToString();
            lblimg1.Text = dr["Image1"].ToString();
            lblimg2.Text = dr["Image2"].ToString();
            lblimg3.Text = dr["Image3"].ToString();
            lblimg4.Text = dr["Image4"].ToString();
            txtdec.Text = dr["Description"].ToString();
            txtfeature1.Text = dr["Feature1"].ToString();
            txtfea1desc.Text = dr["Feature1_Desc"].ToString();
            txtfeature2.Text = dr["Feature2"].ToString();
            txtfea2desc.Text = dr["Feature2_Desc"].ToString();
            txtfeature3.Text = dr["Feature3"].ToString();
            txtfea3desc.Text = dr["Feature3_Desc"].ToString();
            txtfeature4.Text = dr["Feature4"].ToString();
            txtfea4desc.Text = dr["Feature4_Desc"].ToString();
        }
        catch (Exception ex)
        {

        }
        finally
        {
            con.Close();
        }
    }
}