<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="SchoolAdministration.AddStudents" %>
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
    
     <h3 class="page-title">
                     Add Student Details
                   </h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrum" runat="server">
    <ul class="breadcrumb">
                       <li>
                           <a href="#">School Administrator</a>
                           <span class="divider">/</span>
                       </li>
                       <li>
                           <a href="#">Student Manangement</a>
                           <span class="divider">/</span>
                       </li>
                       <li class="active">
                           Add Student Details
                       </li>
                      
                   </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainchangingpart" runat="server">
    <div style="padding:25px;">
                    <!-- TEXTBOXES -->
                   <label style="width:150px; padding-right:20px; float:left; font-size:20px; color:blue;" >Student's Details</label><br /><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Roll</label>
                   <asp:TextBox ID="TxtRoll" CssClass="text large required"  runat="server" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="First Name is Required" ControlToValidate="TxtRoll" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >First Name</label>
                   <asp:TextBox ID="TxtStudentFName" CssClass="text large required"  runat="server" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="First Name is Required" ControlToValidate="TxtStudentFname" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Middle Name</label> 
                   <asp:TextBox ID="TxtMiddleName" CssClass="text large required"  runat="server" ></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Last Name</label>
                   <asp:TextBox ID="TxtStudentLName" CssClass="text large required" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Last Name is Required" ControlToValidate="TxtStudentLname" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Grade</label>
                   <asp:TextBox ID="Grade" CssClass="text large required" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Last Name is Required" ControlToValidate="Grade" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Section</label>            
                   <asp:TextBox ID="TxtSection" CssClass="text large required" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Choose Section" ControlToValidate="TxtSection"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Address</label>
                   <asp:TextBox ID="StudentAddress" CssClass="text large required"  runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Address is Required" ControlToValidate="StudentAddress" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Phone No</label>
                   <asp:TextBox ID="StuPhone" CssClass="text large required" runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Mobile No</label>
                   <asp:TextBox ID="StuMobile" CssClass="text large required"  runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Mobile Number is Required" ControlToValidate="StuMobile" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Date Of Birth</label>
                   <asp:TextBox ID="DOB" CssClass="text large required"  runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Date of Birth is Required" ControlToValidate="DOB" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br /><br />
                  
        

                   <label style="width:150px; padding-right:20px; float:left; font-size:20px; color:blue;" >Parent's Details</label><br /> <br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >First Name</label>
                   <asp:TextBox ID="ParentFName" CssClass="text large required"  runat="server" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="First Name is Required" ControlToValidate="ParentFName" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
         <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Middle Name</label>
                   <asp:TextBox ID="ParentMName" CssClass="text large required"  runat="server" ></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Last Name</label>
                   <asp:TextBox ID="ParentLName" CssClass="text large required" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Last Name is Required" ControlToValidate="ParentLName" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Address</label>
                   <asp:TextBox ID="ParentAddress" CssClass="text large required"  runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Address is Required" ControlToValidate="ParentAddress" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Phone No</label>
                   <asp:TextBox ID="ParentPhone" CssClass="text large required" runat="server"></asp:TextBox><br />
                   <label style="width:150px; padding-right:20px; float:left; font-size:16px;" >Mobile No</label>
                   <asp:TextBox ID="ParentMobile" CssClass="text large required"  runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="addstudentdetails" ErrorMessage="Mobile Number is Required" ControlToValidate="ParentMobile" CssClass="fieldvalidator"></asp:RequiredFieldValidator><br />
                   
        
      <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="addstudentdetails" />    
   </div>           	
</asp:Content>