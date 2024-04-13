using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();

            mail.From = new MailAddress(txtemail.Text);
            mail.To.Add("shreeswamisamarthconsultancy10@gmail.com");
            mail.Subject = ("Enquiry");
            mail.Body = "Name- " + txtname.Text + " " + "Mail- " + txtemail.Text + " " + "Mobile- " + txtmobile.Text + " " + "Message- " + txtmessage.Text; ;


            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("sauravbhilare0403@gmail.com", "kphkkdrqkgrcgcnx");



            smtp.Send(mail);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Details Upload successfully...!');", true);

            txtname.Text = "";
            txtmobile.Text = "";
            txtmessage.Text = "";
            txtemail.Text = "";

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
}
