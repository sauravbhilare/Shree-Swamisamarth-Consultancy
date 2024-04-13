<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-4 text-white animated slideInDown mb-3">About Us</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">About</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Facts Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="fact-item bg-light rounded text-center h-100 p-5">
                        <i class="fa fa-certificate fa-4x text-primary mb-4"></i>
                        <h5 class="mb-3">Years Experience</h5>
                        <h1 class="display-5 mb-0" data-toggle="counter-up">10</h1>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="fact-item bg-light rounded text-center h-100 p-5">
                        <i class="fa fa-users-cog fa-4x text-primary mb-4"></i>
                        <h5 class="mb-3">Team Members</h5>
                        <h1 class="display-5 mb-0" data-toggle="counter-up">50</h1>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="fact-item bg-light rounded text-center h-100 p-5">
                        <i class="fa fa-users fa-4x text-primary mb-4"></i>
                        <h5 class="mb-3">Satisfied Clients</h5>
                        <h1 class="display-5 mb-0" data-toggle="counter-up">80</h1>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="fact-item bg-light rounded text-center h-100 p-5">
                        <i class="fa fa-check fa-4x text-primary mb-4"></i>
                        <h5 class="mb-3">Projects Done</h5>
                        <h1 class="display-5 mb-0" data-toggle="counter-up">50</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facts End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="img-border">
                        <img class="img-fluid" src="img/about2.jpg" alt="" style="box-shadow: 3px 3px 3px 3px;" >
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="h-100">
                       <h6 class="section-title bg-white text-center text-primary px-3">About Us</h6>
                        <h1 class="display-6 mb-4">Who We Are ?</h1>
                        <p class="m_bottom_15 fw_light fs_large" style="color: #777;">Shree Swamisamarth Consultancy is a global leader in I.T. software and application (app) development that is also reasonably priced.</p>
                        <p class="m_bottom_25 fw_light fs_large" style="color: #777;">We have our own software that is used by small and large businesses, schools, and other enterprises or companies in different variations, from a simple POS (Point of Sale) to a very sophisticated and complex application based on what different companies need most, especially at this time when every company, and trader is engaging global markets. </p>
                        <p class="mb-4">We have 10 years of experience dealing with global clients at call centers by assisting them with their sales. Customers care, so we have entered this sector and are helping customers build new websites. Small to large businesses, schools, and any enterprise or company use both low-cost software and our own software.</p>
                        <p class="mb-4">Shree Swamisamarth Consultancy is a leading global provider of I.T. software and app development solutions, known for delivering cutting-edge technology at an affordable price. With a decade of experience serving customers across the globe, our team has developed a robust suite of software tools that cater to the unique needs of businesses of all sizes. From simple Point of Sale systems to complex custom applications, Shree Swamisamarth Consultancy has the expertise to deliver the right solution for your organization. In addition to our proprietary software, we also offer affordable website building services to help our clients stay ahead of the curve in today's fast-paced digital landscape.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
</asp:Content>


