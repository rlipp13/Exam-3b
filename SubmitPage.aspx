<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SubmitPage.aspx.vb" Inherits="_Default" %>

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
                <asp:Label ID="langLabel" runat="server" Text="Please choose your language:" meta:resourcekey="langLabel"></asp:Label>
                <br />
                <br />
            <asp:DropDownList ID="language1" runat="server" Width="108px" AutoPostBack="true" Height="22px" AppendDataBoundItems="True">
                <asp:ListItem Value="en">English</asp:ListItem>
                <asp:ListItem Value="ar">Arabic</asp:ListItem>
                <asp:ListItem Value="zh">Chinese</asp:ListItem>
                <asp:ListItem Value="es">Spanish</asp:ListItem>
            </asp:DropDownList>
            </center>
        </div>
        <div id="right">
            <asp:Label ID="helloLabel" runat="server" Text="Hello" meta:resourcekey="helloLabel"></asp:Label>
            <asp:Label ID="mrLabel" runat="server" meta:resourcekey="mrLabel" ></asp:Label>
            <asp:Label ID="mrsLabel" runat="server" meta:resourcekey="mrsLabel" />
            <asp:Label ID="sessionNameLabel" runat="server" ></asp:Label>
            <br />
            <br />
            <asp:Label ID="label3" runat="server" Text="I hope you have a great day when you graduate on" meta:resourcekey="label3" />
            <asp:Label ID="sessionDateLabel" runat="server" ></asp:Label> &nbsp;!<br />
            <br />
            <asp:Label ID="wishLabel" runat="server" Text="I wish you well in your career after graduation. I hope you earn" meta:resourcekey="wishLabel" />
            <asp:Label ID="Label4" runat="server" ></asp:Label>
            <asp:Label ID="wishLabel2" runat="server" Text="as a salary in your first job !" meta:resourcekey="wishLabel2" />
            <br />
            <br />
            <asp:Label ID="visitLabel" runat="server" Text="Please visit me on " meta:resourcekey="visitLabel" />
            <asp:HyperLink id="link1" runat="server" Text="Github" NavigateUrl="https://github.com/rlipp13" Target="_blank" />
            <br />
            <br />
            <br />
        </div>
    </div>  
    </form>
</body>
</html>
