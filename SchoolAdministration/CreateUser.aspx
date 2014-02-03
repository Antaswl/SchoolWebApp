<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="SchoolAdministration.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .fieldvalidator
{padding-left:40px; color:red;
}
          .checkbox
          {margin-left:190px;
           padding-right:20px;
           float:left;
          }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagetitle" runat="server">
    
     <h3 class="page-title" style="padding-left:25px;">
                   Dashboard
                   </h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrum" runat="server">
     <ul class="breadcrumb">
                       <li>
                           <a href="#">School Administrator</a>
                           <span class="divider">/</span>
                       </li>
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                       <li class="active">
                           Create User
                       </li>
                      
                   </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainchangingpart" runat="server">
  <div class="widget yellow">
                        <div class="widget-title">
                            <h4>Add/ Create Users</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                                <a href="javascript:;" class="icon-remove"></a>
                            </span>
                        </div>
                        <div class="widget-body">
  <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >First Name</label>
 <asp:TextBox ID="TxtFName" CssClass="text large required"  runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="usercreate" ErrorMessage="First Name is Required" ControlToValidate="TxtFname" CssClass="fieldvalidator"></asp:RequiredFieldValidator>
  <br />
 <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Last Name</label>
 <asp:TextBox ID="TxtlName" CssClass="text large required" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="usercreate"  CssClass="fieldvalidator" runat="server" ControlToValidate="TxtLname" ErrorMessage="Last name is Required"></asp:RequiredFieldValidator>
   <br />
 <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Username</label>
 <asp:TextBox ID="TxtUsername" CssClass="text large required" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="usercreate"  CssClass="fieldvalidator" runat="server" ErrorMessage="Username is Required" ControlToValidate="TxtUsername"></asp:RequiredFieldValidator><br />         
 <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Password</label>
 <asp:TextBox ID="PwdPassword" CssClass="text large required" runat="server" TextMode="Password"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="usercreate" runat="server" ErrorMessage="Password is Required" ControlToValidate="PwdPassword" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
 <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Confirm Password</label>
 <asp:TextBox ID="PwdCpassword" CssClass="text large required"  runat="server" TextMode="Password" ></asp:TextBox>
 <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="usercreate"  CssClass="fieldvalidator" ErrorMessage="Password Mismatch" ControlToCompare="PwdPassword" ControlToValidate="PwdCpassword"></asp:CompareValidator><br />
 <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >E-Mail</label>
 <asp:TextBox ID="TxtEMail" CssClass="text large required" runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="usercreate" runat="server" ErrorMessage="Enter Valid email address"  CssClass="fieldvalidator"  ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ControlToValidate="TxtEMail"></asp:RegularExpressionValidator><br />
 <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Role Type</label>
                   <asp:DropDownList ID="DropRoleType" runat="server">
                       </asp:DropDownList>
                   
                     <br />
                   <asp:CheckBox ID="CkBoxActive" CssClass="checkbox" runat="server" /> <label> Is Active</label>
        <asp:Button ID="Button1" CssClass="submit" runat="server" Text="Button" OnClick="Button1_Click" ValidationGroup="usercreate"/>  
                        </div>
                    </div>
                    <!-- TEXTBOXES -->
      
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> 	
</asp:Content>
