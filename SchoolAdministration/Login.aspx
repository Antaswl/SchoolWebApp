<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SchoolAdministration.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/jquery.validate.js"></script>
    <link href="css/styles.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="admin_wrapper">

    
                    <div id="logo">
                    
                    <h1>School <span>Admin</span></h1>
                    
                    </div>
                    
                    <!-- END LOGO -->
                    <p>Type in anything to proceed to the demo.</p>
                  
                
                    <!-- TEXTBOXES -->
                    <label>Username</label><br />
                   <asp:TextBox ID="Username" CssClass="text large required" runat="server"></asp:TextBox><br />
                   <div class="clearfix">&nbsp;</div>          
                   <label>Password</label><br />
                   <asp:TextBox ID="Password" CssClass="text large required"  runat="server" TextMode="Password"></asp:TextBox>
                     <br />
                
              		
         <div class="clearfix">&nbsp;</div>
        <asp:Label ID="LblErrordisplay" runat="server" Text="Label" Enabled="False" EnableViewState="False" ViewStateMode="Disabled"></asp:Label>
                
                <p>
                    <asp:Button ID="BtnLogin" CssClass="submit" runat="server"  Text="Login" OnClick="BtnLogin_Click1" />
                    <asp:CheckBox ID="cbdemo2" CssClass="checkbox" runat="server" />
                  <label for="cbdemo2">Remember Me</label>
                    
              </p>

    </div>
    </form>
</body>
</html>
