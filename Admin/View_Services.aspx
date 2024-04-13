<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.master" AutoEventWireup="true" CodeFile="View_Services.aspx.cs" Inherits="Admin_View_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .truncate {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 100px; /* Adjust the maximum width as needed */
            display: inline-block;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Label ID="lblid" runat="server" Visible="false"></asp:Label>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <h5 class="">View Services</h5>
                <hr>
                <div class="table-responsive">
                    <asp:GridView ID="gvService" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered zero-configuration"
                        ShowHeaderWhenEmpty="True" EmptyDataText="Sorry !! No Admin Found" EmptyDataRowStyle-ForeColor="Red"
                        EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-BackColor="White"
                        DataKeyNames="ID" AllowPaging="false" PageSize="20" BackColor="White" BorderColor="#DEDFDE"
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical"
                        HorizontalAlign="Center" OnRowDeleting="gvService_RowDeleting" OnRowCommand="gvService_RowCommand"
                        OnRowUpdating="gvService_RowUpdating" OnRowDataBound="gvService_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="#">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Id" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("ID")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Title">
                                <ItemTemplate>
                                    <asp:Label ID="lbltitl" runat="server" Text='<%# Eval("Service_Name")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Image1">
                                <ItemTemplate>
                                    <div style="text-align: center;">
                                        <asp:Label ID="lblimg1" runat="server" Text='<%# Eval("Image1")%>' Visible="false"></asp:Label>
                                        <asp:Image ID="img1" runat="server" Width="25px" />
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Image2">
                                <ItemTemplate>
                                    <div style="text-align: center;">
                                        <asp:Label ID="lblimg2" runat="server" Text='<%# Eval("Image2")%>' Visible="false"></asp:Label>
                                        <asp:Image ID="img2" runat="server" Width="25px" />
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Image3">
                                <ItemTemplate>
                                    <div style="text-align: center;">
                                        <asp:Label ID="lblimg3" runat="server" Text='<%# Eval("Image3")%>' Visible="false"></asp:Label>
                                        <asp:Image ID="img3" runat="server" Width="25px" />
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Image4">
                                <ItemTemplate>
                                    <div style="text-align: center;">
                                        <asp:Label ID="lblimg4" runat="server" Text='<%# Eval("Image4")%>' Visible="false"></asp:Label>
                                        <asp:Image ID="img4" runat="server" Width="25px" />
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Description") %>' CssClass="truncate" ToolTip='<%# Eval("Description") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Feature1">
                                <ItemTemplate>
                                    <asp:Label ID="lblfe1" runat="server" Text='<%# Eval("Feature1")%>' CssClass="truncate" ToolTip='<%# Eval("Feature1") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Feature2">
                                <ItemTemplate>
                                    <asp:Label ID="lblfe2" runat="server" Text='<%# Eval("Feature2")%>' CssClass="truncate" ToolTip='<%# Eval("Feature2") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Feature3">
                                <ItemTemplate>
                                    <asp:Label ID="lblfe3" runat="server" Text='<%# Eval("Feature3")%>' CssClass="truncate" ToolTip='<%# Eval("Feature3") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Feature4">
                                <ItemTemplate>
                                    <asp:Label ID="lblfe4" runat="server" Text='<%# Eval("Feature4")%>' CssClass="truncate" ToolTip='<%# Eval("Feature4") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Opration">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" CommandArgument='<%# Eval("ID")%>'>
                                             <img src="assets/images/icons/pen.png" alt="Edit" width="25" height="25" />
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete1" CommandArgument='<%# Eval("ID")%>'>
                                             <img src="assets/images/icons/bin.png" alt="Delete" width="25" height="25" />
                                    </asp:LinkButton>

                                </ItemTemplate>
                            </asp:TemplateField>


                        </Columns>
                        <HeaderStyle BackColor="#967ADC" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                        <EmptyDataRowStyle HorizontalAlign="Center" BackColor="White" ForeColor="Red"></EmptyDataRowStyle>
                        <FooterStyle BackColor="#CCCC99" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
<%--    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

</asp:Content>

