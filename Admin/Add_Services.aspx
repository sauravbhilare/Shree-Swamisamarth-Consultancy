<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.master" AutoEventWireup="true" CodeFile="Add_Services.aspx.cs" Inherits="Admin_Add_Services" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Label ID="lblServicesId" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblimg1" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblimg2" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblimg3" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblimg4" runat="server" Visible="false"></asp:Label>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <h5 class="">Add Services</h5>
                <hr>
                <form class="needs-validation">
                    <div class="form-row">
                        <div class="col-md-12 mb-3">
                            <label>Service Title</label>
                            <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" placeholder="Title" required></asp:TextBox>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label>Image 1</label><br />
                            <asp:FileUpload ID="image1" runat="server" />
                        </div>
                        <div class="col-md-3 mb-3">
                            <label>Image 2</label><br />
                            <asp:FileUpload ID="image2" runat="server" />
                        </div>
                        <div class="col-md-3 mb-3">
                            <label>Image 3</label><br />
                            <asp:FileUpload ID="image3" runat="server" />
                        </div>
                        <div class="col-md-3 mb-3">
                            <label>Image 4</label><br />
                            <asp:FileUpload ID="image4" runat="server" />
                        </div>
                        <div class="col-md-12 mb-3">
                            <label>Service Description</label>
                            <asp:TextBox ID="txtdec" runat="server" CssClass="form-control" placeholder="Description" required></asp:TextBox>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label>Feature 1</label>
                            <asp:TextBox ID="txtfeature1" runat="server" CssClass="form-control" placeholder="Feature"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Feature 1 Description</label>
                            <asp:TextBox ID="txtfea1desc" runat="server" CssClass="form-control" placeholder="Description" TextMode="MultiLine" Rows="1"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Feature 2</label>
                            <asp:TextBox ID="txtfeature2" runat="server" CssClass="form-control" placeholder="Feature"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Feature 2 Description</label>
                            <asp:TextBox ID="txtfea2desc" runat="server" CssClass="form-control" placeholder="Description" TextMode="MultiLine" Rows="1"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Feature 3</label>
                            <asp:TextBox ID="txtfeature3" runat="server" CssClass="form-control" placeholder="Feature"></asp:TextBox>
                        </div>
                         <div class="col-md-6 mb-3">
                            <label>Feature 3 Description</label>
                            <asp:TextBox ID="txtfea3desc" runat="server" CssClass="form-control" placeholder="Description" TextMode="MultiLine" Rows="1"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Feature 4</label>
                            <asp:TextBox ID="txtfeature4" runat="server" CssClass="form-control" placeholder="Feature"></asp:TextBox>
                        </div>
                         <div class="col-md-6 mb-3">
                            <label>Feature 4 Description</label>
                            <asp:TextBox ID="txtfea4desc" runat="server" CssClass="form-control" placeholder="Description" TextMode="MultiLine" Rows="1"></asp:TextBox>
                        </div>
                    </div>

                    <asp:Button ID="btnadd" runat="server" Text="Add Service" CssClass="btn btn-primary" OnClick="btnadd_Click" Style="background-color: #ff9c00; border-color: #ff9c00" />

                </form>
            </div>
        </div>
    </div>
</asp:Content>


