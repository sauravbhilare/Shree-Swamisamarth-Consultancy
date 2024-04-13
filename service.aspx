<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .size {
            font-size: medium !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblsid" runat="server" Visible="false"></asp:Label>
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-4 text-white animated slideInDown mb-3">Services</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">Services</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <!--Services Start-->
    <div class="container-xxl service py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="section-title bg-white text-center text-primary px-3">Services</h6>
                <h1 class="display-6 mb-4">We Focus On Making The Best In All Sectors</h1>
            </div>
            <div class="row g-4 wow fadeInUp" data-wow-delay="0.3s">
                <%--                <div class="col-lg-4">
                    <div class="nav w-100 nav-pills me-4">
                        <button class="nav-link w-100 d-flex align-items-center text-start active" data-bs-toggle="pill" data-bs-target="#tab-pane-1" type="button">
                            <i class="bi bi-cash fa-1x me-3"></i>
                            <h4 class="m-0 change size">ALL TYPES LOAN</h4>
                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start " data-bs-toggle="pill" data-bs-target="#tab-pane-2" type="button">
                            <i class="bi bi-code-slash fa-1x me-3"></i>
                            <h4 class="m-0 change size">WEB DEVELOPMENT</h4>

                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start" data-bs-toggle="pill" data-bs-target="#tab-pane-3" type="button">
                            <i class="fa fa-mobile fa-1x me-3"></i>
                            <h4 class="m-0 change size">MOBILE APP DEVELOPMENT</h4>
                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start" data-bs-toggle="pill" data-bs-target="#tab-pane-4" type="button">
                            <i class="bi bi-gear-fill fa-1x me-3"></i>
                            <h4 class="m-0 change size">ERP SOLUTION</h4>
                        </button>

                        <button class="nav-link w-100 d-flex align-items-center text-start" data-bs-toggle="pill" data-bs-target="#tab-pane-5" type="button">
                            <i class="bi bi-calendar-event fa-1x me-3"></i>
                            <h4 class="m-0 change size">CLASS MANAGEMENT</h4>
                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start" data-bs-toggle="pill" data-bs-target="#tab-pane-6" type="button">
                            <i class="bi bi-book fa-1x me-3"></i>
                            <h4 class="m-0 change size">SCHOOL MANAGEMENT</h4>
                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start" data-bs-toggle="pill" data-bs-target="#tab-pane-7" type="button">
                            <i class="bi bi-building fa-1x me-3"></i>
                            <h4 class="m-0 change size">Hotel MANAGEMENT</h4>
                        </button>
                    </div>
                </div>--%>
                <div class="col-lg-12">
                    <div class="tab-content w-100">
                        <div class="tab-pane fade show active" id="tab-pane-1">
                            <div class="row g-4">
                                <div class="col-md-4" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <!-- Carousel -->
                                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner">
                                                <asp:Repeater ID="CarouselRepeater" runat="server">
                                                    <ItemTemplate>
                                                        <div class="carousel-item <%# Container.ItemIndex == 0 ? "active" : "" %>">
                                                            <img src='<%# "/Admin/Image1/" + Eval("Image1") %>' class="d-block w-100" alt='<%# Eval("Image1") %>' />
                                                        </div>
                                                        <div class="carousel-item <%# Container.ItemIndex == 1  %>">
                                                            <img src='<%# "/Admin/Image2/" + Eval("Image2") %>' class="d-block w-100" alt='<%# Eval("Image2") %>' />
                                                        </div>
                                                        <div class="carousel-item <%# Container.ItemIndex == 2 %>">
                                                            <img src='<%# "/Admin/Image3/" + Eval("Image3") %>' class="d-block w-100" alt='<%# Eval("Image3") %>' />
                                                        </div>
                                                        <div class="carousel-item <%# Container.ItemIndex == 3  %>">
                                                            <img src='<%# "/Admin/Image4/" + Eval("Image4") %>' class="d-block w-100" alt='<%# Eval("Image4") %>' />
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                        <!-- End of Carousel -->
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <asp:Repeater ID="rpt1" runat="server" OnItemDataBound="rpt1_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <h3 class="mb-3"><%# Eval("Service_Name") %></h3>
                                                    <p class="mb-4"><%# Eval("Description") %></p>
                                                </div>
                                            </div>
                                            <div class="row feature-row">
                                                <div class="col-md-6 feature" id="Feature1" runat="server">
                                                    <p style="font-weight: 800; margin-bottom: 2px!important;"><i class="bi bi-star-fill text-primary me-1"></i><%# Eval("Feature1") %></p>
                                                    <p style="font-size: 13px; margin-left: 30px;"><%# Eval("Feature1_Desc") %></p>
                                                </div>
                                                <div class="col-md-6 feature" id="Feature2" runat="server">
                                                    <p style="font-weight: 800; margin-bottom: 2px!important;"><i class="bi bi-star-fill text-primary me-1"></i><%# Eval("Feature2") %></p>
                                                    <p style="font-size: 13px; margin-left: 30px;"><%# Eval("Feature2_Desc") %></p>
                                                </div>
                                                <div class="col-md-6 feature" id="Feature3" runat="server">
                                                    <p style="font-weight: 800; margin-bottom: 2px!important;"><i class="bi bi-star-fill text-primary me-1"></i><%# Eval("Feature3") %></p>
                                                    <p style="font-size: 13px; margin-left: 30px;"><%# Eval("Feature3_Desc") %></p>
                                                </div>
                                                <div class="col-md-6 feature" id="Feature4" runat="server">
                                                    <p style="font-weight: 800; margin-bottom: 2px!important;"><i class="bi bi-star-fill text-primary me-1"></i><%# Eval("Feature4") %></p>
                                                    <p style="font-size: 13px; margin-left: 30px;"><%# Eval("Feature4_Desc") %></p>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>

                            </div>
                        </div>


                        <%-- Web Development--%>
                        <%-- <div class="tab-pane fade show" id="tab-pane-2">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <!-- Carousel -->
                                        <div id="carouselExampleControls1" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="img/web.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car1.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car2.jpg" class="d-block w-100" alt="...">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls1" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls1" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                        <!-- End of Carousel -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-3" id="webdesign">WEB DEVELOPEMENT</h3>
                                    <p class="mb-4">Our web development services create customized websites that blend innovative design with robust technology, ensuring seamless online experiences that engage audiences and achieve results.</p>
                                    <p><i class="bi bi-brush text-primary me-3"></i>Customized Website Design</p>
                                    <p><i class="bi bi-cpu text-primary me-3"></i>Robust Technology Integration</p>
                                    <p><i class="bi bi-globe text-primary me-3"></i>Seamless User Experience</p>
                                    <p><i class="bi bi-graph-up text-primary me-3"></i>Results-Driven Approach</p>

                                </div>
                            </div>
                        </div>--%>

                        <%-- Mobile App Development--%>
                        <%--    <div class="tab-pane fade show" id="tab-pane-3">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <!-- Carousel -->
                                        <div id="carouselExampleControls2" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="img/web.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car1.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car2.jpg" class="d-block w-100" alt="...">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                        <!-- End of Carousel -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-3" id="mobileapp">MOBILE APP DEVELOPEMRNT</h3>
                                    <p class="mb-4">Elevate your digital presence with our innovative mobile app development services, delivering seamless user experiences from concept to deployment. </p>
                                    <p><i class="bi bi-brush text-primary me-3"></i>Innovative Design</p>
                                    <p><i class="bi bi-globe text-primary me-3"></i>Seamless User Experience</p>
                                    <p><i class="bi bi-tools text-primary me-3"></i>End-to-End Development</p>
                                    <p><i class="bi bi-grid-3x3-gap text-primary me-3"></i>Customized Solutions</p>

                                </div>
                            </div>
                        </div>--%>


                        <%-- ERP Solutions--%>
                        <%--   <div class="tab-pane fade show" id="tab-pane-4">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <!-- Carousel -->
                                        <div id="carouselExampleControls3" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="img/web.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car1.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car2.jpg" class="d-block w-100" alt="...">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls3" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls3" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                        <!-- End of Carousel -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-3" id="erp">ERP SOLUTION</h3>
                                    <p class="mb-4">Optimize your business processes with our comprehensive ERP solution, streamlining operations, enhancing efficiency, and driving growth.</p>
                                    <p><i class="bi bi-diagram-3 text-primary me-3"></i>Integrated Modules</p>
                                    <p><i class="bi bi-gear text-primary me-3"></i>Customization Options</p>
                                    <p><i class="bi bi-bar-chart text-primary me-3"></i>Real-Time Analytics</p>
                                    <p><i class="bi bi-graph-up text-primary me-3"></i>Scalability and Flexibility</p>
                                </div>
                            </div>
                        </div>--%>

                        <%--Class Management--%>
                        <%--     <div class="tab-pane fade show" id="tab-pane-5">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <!-- Carousel -->
                                        <div id="carouselExampleControls4" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="img/web.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car1.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car2.jpg" class="d-block w-100" alt="...">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                        <!-- End of Carousel -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-3" id="class">CLASS MANAGEMENT</h3>
                                    <p class="mb-4">Empower educators and streamline administrative tasks with our comprehensive class management solution, facilitating efficient lesson planning, student tracking, and academic progress monitoring.</p>
                                    <p><i class="bi bi-calendar2-date text-primary me-3"></i>Efficient Lesson Planning</p>
                                    <p><i class="bi bi-journal-text text-primary me-3"></i>Student Progress Tracking</p>
                                    <p><i class="bi bi-people text-primary me-3"></i>Attendance Management</p>
                                    <p><i class="bi bi-chat-left-text text-primary me-3"></i>Communication and Collaboration</p>

                                </div>
                            </div>
                        </div>--%>

                        <%--Class Management--%>
                        <%-- <div class="tab-pane fade show" id="tab-pane-6">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <!-- Carousel -->
                                        <div id="carouselExampleControls5" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="img/web.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car1.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car2.jpg" class="d-block w-100" alt="...">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls5" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls5" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                        <!-- End of Carousel -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-3" id="school">SCHOOL MANAGEMENT</h3>
                                    <p class="mb-4">Our school management software simplifies the process of adding and managing staff, students, and teachers effortlessly. With unique usernames and passwords assigned to each individual, seamless access is granted, ensuring efficient account management for all users.</p>
                                    <p><i class="bi bi-person-check text-primary me-3"></i>Effortless Staff, Student, and Teacher Management</p>
                                    <p><i class="bi bi-person text-primary me-3"></i>Individualized User Access</p>
                                    <p><i class="bi bi-gear text-primary me-3"></i>Seamless Account Management</p>
                                    <p><i class="bi bi-shield-lock text-primary me-3"></i>Efficient Access Control</p>
                                </div>
                            </div>
                        </div>--%>

                        <%--Hotel Management--%>
                        <%--     <div class="tab-pane fade show" id="tab-pane-7">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <!-- Carousel -->
                                        <div id="carouselExampleControls6" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="img/web.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car1.jpg" class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="img/car2.jpg" class="d-block w-100" alt="...">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls6" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls6" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                        <!-- End of Carousel -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-3" id="hotel">HOTEL MANAGEMENT</h3>
                                    <p class="mb-4">Hotel Management ERP simplifies hotel operations, seamlessly managing reservations, guest services, and billing for enhanced efficiency and guest satisfaction.</p>
                                    <p><i class="bi bi-calendar2-date text-primary me-3"></i>Reservation Management</p>
                                    <p><i class="bi bi-person text-primary me-3"></i>Guest Services</p>
                                    <p><i class="bi bi-cash text-primary me-3"></i>Billing and Invoicing</p>
                                    <p><i class="bi bi-bar-chart text-primary me-3"></i>Analytics and Reporting</p>

                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->

</asp:Content>

