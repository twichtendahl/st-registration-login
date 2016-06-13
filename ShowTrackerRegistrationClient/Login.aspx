<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Tracker Venue Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker: Venue Accounts</h1>
        <p>Login to your venue account or register new venue.</p>
        <table>
            <tr>
                <td>Account Username</td>
                <td>
                    <asp:TextBox ID="user_name_textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="password_textbox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="login_button" runat="server" Text="Log In" OnClick="login_button_Click" />
                </td>
                <td>
                    <asp:Label ID="result_label" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="register_link_button" runat="server" PostBackUrl="~/Registration.aspx">Register</asp:LinkButton>
    </div>
    </form>
</body>
</html>
