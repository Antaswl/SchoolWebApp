<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SchoolAdministration.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagetitle" runat="server">
    <h3 class="page-title">
                     Dashboard
                   </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrum" runat="server">
     <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                       <li>
                           <a href="#">school Lab</a>
                           <span class="divider">/</span>
                       </li>
                       <li class="active">
                           Dashboard
                       </li>
                      
                   </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainchangingpart" runat="server">
      <div class="school-nav-block navbagblue">
                        <a data-original-title="" href="#">
                            <i class="icon-user"></i>
                            <div class="status">Fee Manangement</div>
                        </a>
                    </div>
                    <div class="school-nav-block navbagblue">
                        <a data-original-title="" href="#">
                            <i class="icon-tags"></i>
                            <div class="status">Staff Manangement</div>
                        </a>
                    </div>
                    <div class="school-nav-block navbagblue">
                        <a data-original-title="" href="#">
                            <i class="icon-comments-alt"></i>
                            <div class="status">Result Manangement</div>
                        </a>
                    </div>
                    <div class="school-nav-block navbagblue">
                        <a data-original-title="" href="#">
                            <i class="icon-bar-chart"></i>
                            <div class="status">Routine Manangement</div>
                        </a>
                    </div>
                    <div class="school-nav-block navbagblue">
                        <a data-original-title="" href="#">
                            <i class="icon-bar-chart"></i>
                            <div class="status">Student Manangement</div>
                        </a>
                    </div>

</asp:Content>
