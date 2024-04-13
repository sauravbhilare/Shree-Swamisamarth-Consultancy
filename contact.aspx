<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-4 text-white animated slideInDown mb-3">Contact</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="section-title bg-white text-center text-primary px-3">Contact Us</h6>
                <h1 class="display-6 mb-4">If You Have Any Query, Please Feel Free Contact Us</h1>
            </div>
            <div class="row g-0 justify-content-center">
                <div class="col-lg-8 wow fadeInUp" data-wow-delay="0.5s">
<%--                    <p class="text-center mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="#">Download Now</a>.</p>--%>
                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                                    <label for="name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    
                                    <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder="Mobile"></asp:TextBox>
                                    <label for="subject">Mobile</label>
                                    
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                   <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Your Email"></asp:TextBox>
                                    <label for="email">Your Email</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="txtmessage" runat="server" class="form-control" TextMode="MultiLine"  placeholder="Message" Rows="10" Columns="99"></asp:TextBox> 
                                    <label for="message">Message</label>
                                </div>
                            </div>
                                                            <div class="g-recaptcha" data-sitekey="6LdZVyEpAAAAAPECwm-LMFw_5hehV1Li79CogIyh"></div>

                            <div class="col-12 text-center">
                                <asp:Button ID="btnsubmit" runat="server" class="btn btn-primary rounded-pill py-3 px-5" Text="Send Message" OnClick="btnsubmit_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Google Map Start -->
    <div class="container-xxl pt-5 px-0 wow fadeIn" data-wow-delay="0.1s">
        <iframe class="w-100 mb-n2" style="height: 450px;"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d470.99481883506246!2d72.99370454783634!3d19.197012655354293!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7bed329df3dfd%3A0x3952cd3bcf457766!2sShri%20Sahyadri%20CHS%20KALWA.!5e0!3m2!1sen!2sin!4v1701263429540!5m2!1sen!2sin"
            frameborder="0" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
    <!-- Google Map End -->
      <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback" async defer></script>
    <script>
        function onloadCallback() {
            grecaptcha.render('form1', {
                'sitekey': '6LdZVyEpAAAAAPECwm-LMFw_5hehV1Li79CogIyh'
            });

          
        }
</script>
</asp:Content>

