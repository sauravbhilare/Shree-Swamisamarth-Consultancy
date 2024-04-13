<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100 img-responsive" src="img/car1.jpg" alt="Image" />                   
                </div>
                
                <div class="carousel-item">
                    <img class="w-100 img-responsive" src="img/car2.jpg"  alt="Image">
            </div>
                <div class="carousel-item">
                    <img class="w-100 img-responsive" src="img/car3.png"  alt="Image">
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    </div>
    <!-- Carousel End -->


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
                        <img class="img-fluid" src="img/about.jpg" alt="" style="box-shadow: 3px 3px 3px 3px;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="h-100">
                        <h6 class="section-title bg-white text-center text-primary px-3">About Us</h6>
                        <h1 class="display-6 mb-4">Who We Are ?</h1>
                        <p class="m_bottom_15 fw_light fs_large" style="color: #777;">  Shree Swamisamarth Consultancy is a global leader in I.T. software and application (app) development that is also reasonably priced.</p>
                        <p class="m_bottom_25 fw_light fs_large" style="color:#777;">We have our own software that is used by small and large businesses, schools, and other enterprises or companies in different variations, from a simple POS (Point of Sale) to a very sophisticated and complex application based on what different companies need most, especially at this time when every company, and trader is engaging global markets. We Deals With Clients From Asia,Europe And Africa.</p>
                        <p class="mb-4">We have 10 years of experience dealing with global clients at call centers by assisting them with their sales. Customers care, so we have entered this sector and are helping customers build new websites. Small to large businesses, schools, and any enterprise or company use both low-cost software and our own software.</p>
  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

<!--What we do start-->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
            <h6 class="section-title bg-white text-center text-primary px-3">What we do ?</h6>
            <h1 class="display-6 mb-4">Learn More What we do ?</h1>
        </div>
    
   
<div class="row g-4">
    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s" >
      <div class="card" >
        <div class="card-body">
            <div>
                <img src="img/software.png" style="margin-left: 92px; width:150px;">
            </div>
          <h5 class="card-title" style="text-align: center; margin-top: 20px;">Software Developement</h5>
          <p class="card-text"  style="margin-top: 20px; text-align: center;">Software development is the process of conceiving, specifying, designing, programming, documenting, testing, and bug fixing involved in creating and maintaining applications, frameworks, or other software components.</p>
          
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s" >
      <div class="card">
        <div class="card-body">
            <div >
                <img src="img/coding.png" style="margin-left: 92px; width:150px;">
            </div>
          <h5 class="card-title" style="text-align: center; margin-top: 20px;"">Web Development</h5>
          <p class="card-text"  style="margin-top: 20px; text-align: center;"">Web development can range from developing a simple single static page of plain text to complex web-based internet applications electronic businesses, and social network services.<br /><br /></p>
          
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s" >
        <div class="card" >
          <div class="card-body">
            <div >
                <img src="img/mobileapp.png" style="margin-left: 90px; width:150px;">
            </div>
            <h5 class="card-title" style="text-align: center; margin-top: 20px;">Mobile App Development</h5>
            <p class="card-text" style="margin-top: 20px;text-align: center;">Mobile app development is the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants, enterprise digital assistants or mobile phones.<br /><br /></p>
            
          </div>
        </div>
      </div>
  </div>
</div>
</div>


<!--What we do end-->
    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="section-title bg-white text-center text-primary px-3">We Offer</h6>
                <h6 class="display-6 mb-4">Apps for mobile, web, we have a dedicated team for all latest technology platforms.</h6>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <a class="service-item d-block rounded text-center h-100 p-4" href="service.aspx">
                        <img class="img-fluid rounded mb-4" src="img/websites.png" alt="">
                        <h4 class="mb-0">Web Design</h4>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <a class="service-item d-block rounded text-center h-100 p-4" href="service.aspx">
                        <img class="img-fluid rounded mb-4" src="img/Android.png" alt="">
                        <h4 class="mb-0">Android Development</h4>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <a class="service-item d-block rounded text-center h-100 p-4" href="service.aspx">
                        <img class="img-fluid rounded mb-4" src="img/iso.png" alt="">
                        <h4 class="mb-0">IOS Development</h4>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <a class="service-item d-block rounded text-center h-100 p-4" href="service.aspx">
                        <img class="img-fluid rounded mb-4" src="img/websites.png" alt="">
                        <h4 class="mb-0">Web Application</h4>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->

       <!-- Our product Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 600px;">
                <h6 class="section-title bg-white text-center text-primary px-3">Products</h6>
                <h1 class="display-6 mb-4">Our Featured Products</h1>
            </div>
            <div class="owl-carousel project-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class=" border rounded h-100 p-4 wow fadeInUp" data-dot="01" data-wow-delay="0.1s">
                    <div class="position-relative mb-4">
                        <img class="img-fluid rounded" src="img/educare.jpg" alt="">
                        <a href="img/educare.jpg" data-lightbox="project"></a>
                    </div>
                    <h6>Educare</h6>
                    <span>Campus Management System for Schools, Colleges and Coaching Centres
                        All-in-one Education ERP
                        To help you go Fully Digital
                        It works as a best School ERP/College ERP/Coaching Software due to the dynamic structure of the system. It's a modern Operating System for Education <br /></span>
                     <a href="educare.aspx" class="btn btn-primary py-3 px-5 mt-3">Read More<i class="fa fa-arrow-right ms-3"></i></a>
                </div>
                <div class=" border rounded h-100 p-4 wow fadeInUp" data-dot="02" data-wow-delay="0.2s">
                    <div class="position-relative mb-4">
                        <img class="img-fluid rounded" src="img/shop1.jpg" alt="">
                        <a href="img/shop1.jpg" data-lightbox="project"></a>
                    </div>
                    <h6>E-Commerce</h6>
                    <span>E-commerce refers to all the online activities that involve buying and selling of products and services and the process for conducting transactions online.<br /><br /><br /><br /><br /><br /></span>
                   <a href="ecommerce.aspx" class="btn btn-primary py-3 px-5 mt-3">Read More<i class="fa fa-arrow-right ms-3"></i></a>
                </div>
                 
                <div class=" border rounded h-100 p-4 wow fadeInUp" data-dot="03" data-wow-delay="0.3s">
                    <div class="position-relative mb-4">
                        <img class="img-fluid rounded" src="img/hotel.jpg" alt="">
                        <a href="hotel.jpg" data-lightbox="project"></a>
                    </div>
                    <h6>Hotel Management</h6>
                    <span>A Restaurant’s online presence is a reflection of their business. Online Restaurant apps make it easier for both customers and restaurants to manage smoothly and efficiently.<br /><br /> <br /><br /><br /></span>
                     <a href="hotel.aspx" class="btn btn-primary py-3 px-5 mt-3">Read More<i class="fa fa-arrow-right ms-3"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Our product End -->
    <!-- Testimonial Start -->
    <%--<div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="section-title bg-white text-center text-primary px-3">Testimonial</h6>
                <h1 class="display-6 mb-4">What Our Clients Say!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item bg-light rounded p-4">
                    <div class="d-flex align-items-center mb-4">
                        <img class="flex-shrink-0 rounded-circle border p-1" src="img/man.png" alt="">
                        <div class="ms-4">
                            <h5 class="mb-1">Eyesight Advisory</h5>
                            
                        </div>
                    </div>
                    <p class="mb-0">Thanks for the great work, we are very happy with the result. During the work process, Shree Swamisamarth Consultancy team was very flexible and willing to try out various things according to our suggestions.<br /><br /><br /> </p>
                </div>
                <div class="testimonial-item bg-light rounded p-4">
                    <div class="d-flex align-items-center mb-4">
                        <img class="flex-shrink-0 rounded-circle border p-1" src="img/man.png" alt="">
                        <div class="ms-4">
                            <h5 class="mb-1">Nalanda Public school</h5>
                           
                        </div>
                    </div>
                    <p class="mb-0">Quality work and friendliness is why I chose to work with team Shree Swamisamarth Consultancy. It just felt right. You were organized very easy to work with. The whole experience has been great and I am very happy with our website. <br /><br /></p>
                </div>
                <div class="testimonial-item bg-light rounded p-4">
                    <div class="d-flex align-items-center mb-4">
                        <img class="flex-shrink-0 rounded-circle border p-1" src="img/man.png" alt="">
                        <div class="ms-4">
                            <h5 class="mb-1">Real Academy</h5>
                          
                        </div>
                    </div>
                    <p class="mb-0">Shree Swamisamarth Consultancy delivered a great website as per our requirements. I am extremely pleased with their efforts and have no hesitation in recommending them to anyone who needs a website or needs to redesign their existing website.</p>
                </div>
             
            </div>
        </div>
    </div>--%>
    <!-- Testimonial End -->
</asp:Content>

