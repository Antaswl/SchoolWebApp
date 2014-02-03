<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="SchoolAdministration.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainchangingpart" runat="server">
    <div class="widget yellow">
                        <div class="widget-title">
                            <h4>Manage Users</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                                <a href="javascript:;" class="icon-remove"></a>
                            </span>
                        </div>
                        <div class="widget-body">
                            <asp:GridView ID="ViewUser" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                                    <asp:BoundField DataField="UserName" HeaderText="Username" SortExpression="UserName" />
                                    <asp:BoundField DataField="Firtname" HeaderText="Firstname" SortExpression="Firtname" />
                                    <asp:BoundField DataField="LastName" HeaderText="Lastname" SortExpression="LastName" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="UserRoles" HeaderText="Roles" SortExpression="UserRoles" />
                                    <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" SortExpression="CreatedOn" />
                                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                                    
                                </Columns>
                            </asp:GridView>
                            </div>
        </div>
</asp:Content>
