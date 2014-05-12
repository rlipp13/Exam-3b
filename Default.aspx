<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" culture="auto:en-US" UIculture="auto"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <h1><asp:Label ID="lblHeader1" runat="server" text="Welcome to 6K:183" meta:resourcekey="lblHeader1" /></h1>
        <h3><asp:Label ID="lblHeader2" runat="server" text="Software Design and Development" meta:resourcekey="lblHeader2" /></h3>
        </center>
    <div id="content">
        <div id="left">
            <center>
                <asp:Label ID="langLabel" runat="server" Text="Please choose your language:" meta:resourcekey="langLabel" ></asp:Label>
                <br />
                <br />
            <asp:DropDownList ID="language1" runat="server" AutoPostBack="true" Width="110px" Height="22px" >
                <asp:ListItem Value="en">English</asp:ListItem>
                <asp:ListItem Value="ar">Arabic</asp:ListItem>
                <asp:ListItem Value="zh">Chinese</asp:ListItem>
                <asp:ListItem Value="es">Spanish</asp:ListItem>
            </asp:DropDownList>
            </center>
        </div>
        <div id="right">
            <asp:Label ID="nameLabel" runat="server" text="My name is" meta:resourcekey="nameLabel" />
            &nbsp;<asp:TextBox ID="tbName" runat="server" Width="191px" Font-Underline="False" style="margin-bottom: 0px" value="Enter full name" onFocus="this.value=''"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="radioLabel" runat="server" text="I am" meta:resourcekey="radioLabel" />
            &nbsp;<asp:RadioButton ID="maleButton" runat="server" GroupName="gender" Text="Male" meta:resourcekey="maleButton" />
            <asp:RadioButton ID="femaleButton" runat="server" GroupName="gender" Text="Female" meta:resourcekey="femaleButton"/>
            <br />
            <br />
            <asp:Label ID="gradLabel" runat="server" text="I plan to graduate on:" meta:resourcekey="gradLabel" />
            <br />&nbsp;
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <asp:Label ID="earnLabel" runat="server" text="When I graduate, I hope to earn:" meta:resourcekey="earnLabel" />
            &nbsp;<asp:TextBox ID="tbSalary" runat="server" Width="175px" value="Enter a number" onFocus="this.value=''" ></asp:TextBox>
            
            
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" meta:resourcekey="btnSubmit" Width="130px" Text="Submit" />
            <br />
            <br />
            <asp:Label ID="dateLabel" runat="server" Visible="False"></asp:Label>
            <br />
            <br />    
        </div>
    </div> 
    </form>
</body>
</html>