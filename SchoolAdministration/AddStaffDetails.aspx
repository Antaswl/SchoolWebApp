<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStaffDetails.aspx.cs" Inherits="SchoolAdministration.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainchangingpart" runat="server">
    <div style="padding:25px;">
                    <!-- TEXTBOXES -->
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >First Name</label>
                   <asp:TextBox ID="TxtStaffFName" CssClass="text large required"  runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Last Name</label>
                   <asp:TextBox ID="TxtStaffLName" CssClass="text large required" runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Marital Status</label>
                   <asp:DropDownList ID="MaritalStatus" runat="server">
                       <asp:ListItem>Married</asp:ListItem>
                       <asp:ListItem>SIngle</asp:ListItem>
                   </asp:DropDownList><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Address</label>
                   <asp:TextBox ID="Address" CssClass="text large required"  runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Phone No</label>
                   <asp:TextBox ID="Phone" CssClass="text large required" runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Mobile No</label>
                   <asp:TextBox ID="Mobile" CssClass="text large required"  runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Date Of Birth</label>
                   <asp:TextBox ID="DOB" CssClass="text large required"  runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Citizenship No</label>
                   <asp:TextBox ID="Citizenship" CssClass="text large required"  runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Date Of Appointment</label>
                   <asp:TextBox ID="DateOfAppointment" CssClass="text large required" runat="server"></asp:TextBox><br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
        <asp:Button ID="StaffButton" runat="server" Text="Button" />       
   </div> 
</asp:Content>
