<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SchoolAdministration.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/HomeStyle.css" rel="stylesheet" />
    <link href="css/fonts.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">School Administration</a></h1>
			<span>School Administration - </span> </div>
		
	</div>
</div>
<div id="three-column" class="container">
	<div><span class="arrow-down"></span></div>
	<div id="tbox1"> <a class="icon icon-money" href="#"></a>
		<!--<div class="title">
			<h2>Maecenas luctus</h2>
		</div-->
		<p>FEE MANAGEMENT</p>
		<!--<a href="#" class="button">Learn More</a>--> </div>
	<div id="tbox2"> <a class="icon icon-group" href="#"></a>
		<!--<div class="title">
			<h2>Integer gravida</h2>
		</div>-->
		<p>Staff Management</p>
		<!--<a href="#" class="button">Learn More</a>--> </div>
	<div id="tbox3">  <a class="icon icon-file-alt" href="#"></a>
		<!--<div class="title">
			<h2>Praesent mauris</h2>
		</div>-->
		<p>Result Management</p>
		<!--<a href="#" class="button">Learn More</a> --></div>

<div id="tbox4">  <a class="icon icon-folder-open-alt" href="#"></a>
		<!--<div class="title">
			<h2>Praesent mauris</h2>
		</div>-->
		<p>Routine Management</p>
		<!--<a href="#" class="button">Learn More</a>--> </div>

<div id="tbox5">  <a class="icon icon-pencil" href="#"></a>
		<!--<div class="title">
			<h2>Praesent mauris</h2>
		</div>-->
		<p>Student Management</p>
		<!--<a href="#" class="button">Learn More</a>--> </div>
    <div id="tbox6">  <a class="icon icon-user-md" href="CreateUser.aspx"></a>
		<!--<div class="title">
			<h2>Praesent mauris</h2>
		</div>-->
		<p> User Management</p>
		<!--<a href="#" class="button">Learn More</a>--> </div>
</div>

    </form>
</body>
</html>
