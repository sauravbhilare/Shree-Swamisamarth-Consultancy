<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shree Swamisamarth Consultancy</title>
    <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />
    <!-- Favicon icon -->
    <link rel="icon" href="Admin/assets/images/wlogo.png" type="image/x-icon" />

    <!-- vendor css -->
    <link rel="stylesheet" href="Admin/assets/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="auth-wrapper" style="background-color:#f7a061">
            <div class="auth-content">
                <div class="card">
                    <div class="row align-items-center text-center">
                        <div class="col-md-12">
                            <div class="card-body">
                                <img src="Admin/assets/images/wlogo.png" alt="" class="img-fluid">
                                <h4 class="mb-3 f-w-400">Login</h4>
                                <div class="form-group mb-3">
                                    <label class="floating-label" for="Email">Username</label>
                                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                                </div>
                                <div class="form-group mb-4">
                                    <label class="floating-label" for="Password">Password</label>
                                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-block btn-primary mb-4" Text="Login" OnClick="btnlogin_Click" style="background-color:#f47820;border-color:#f47820" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ auth-signin ] end -->

        <!-- Required Js -->
        <script src="Admin/assets/js/vendor-all.min.js"></script>
        <script src="Admin/assets/js/plugins/bootstrap.min.js"></script>
        <script src="Admin/assets/js/ripple.js"></script>
        <script src="Admin/assets/js/pcoded.min.js"></script>
    </form>
</body>
</html>
