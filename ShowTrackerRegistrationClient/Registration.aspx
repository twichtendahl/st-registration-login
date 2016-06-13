<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Tracker Venue Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker: Create Venue Account</h1>
        <p>New venues must register to add shows.</p>
        <table>
            <tr>
                <td>Username</td>
                <td><asp:TextBox ID="username_textbox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="username_required" runat="server" ErrorMessage="Username is required." ControlToValidate="username_textbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Venue Name</td>
                <td><asp:TextBox ID="venue_name_textbox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="venue_name_required" runat="server" ErrorMessage="Venue name is required." ControlToValidate="venue_name_textbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td><asp:TextBox ID="address_textbox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="address_required" runat="server" ErrorMessage="Address is required." ControlToValidate="address_textbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td><asp:TextBox ID="city_textbox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="city_required" runat="server" ErrorMessage="City is required." ControlToValidate="city_textbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td><asp:TextBox ID="state_textbox" runat="server"></asp:TextBox></td>
                <!-- ToDo: Implement this as a DropDownList -->
                <td>
                    <asp:RequiredFieldValidator ID="state_required" runat="server" ErrorMessage="State is required." ControlToValidate="state_textbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><asp:TextBox ID="zip_textbox" runat="server" TextMode="Number"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="zip_required" runat="server" ErrorMessage="Zip code is required." ControlToValidate="zip_textbox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="zip_valid" runat="server" ErrorMessage="Must be a valid US postal code" ValidationExpression="\d{5}(-\d{4})?" ControlToValidate="zip_textbox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Business Phone</td>
                <td><asp:TextBox ID="phone_textbox" runat="server" TextMode="Phone"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="phone_required" runat="server" ErrorMessage="Phone # is required." ControlToValidate="phone_textbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td><asp:TextBox ID="email_textbox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="email_valid" runat="server" ErrorMessage="Must be a valid email or left blank." ValidationExpression="(\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)|None" ControlToValidate="email_textbox"></asp:RegularExpressionValidator>                
                </td>
            </tr>
            <tr>
                <td>Website</td>
                <td><asp:TextBox ID="website_textbox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="website_valid" runat="server" ErrorMessage="Must be a valid web address or left blank" ValidationExpression="(http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?)|None" ControlToValidate="website_textbox"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>Patron Age Restriction</td>
                <td>
                    <asp:RadioButtonList ID="age_restriction" runat="server">
                        <asp:ListItem Text="None" Value="0" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Minimum Age (specify): " Value="21"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:TextBox ID="custom_age" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            
            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="password_textbox" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="password_required" runat="server" ErrorMessage="Password is required." ControlToValidate="password_textbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox ID="confirm_password" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="confirm_required" runat="server" 
                        ErrorMessage="Please confirm password." 
                        ControlToValidate="confirm_password">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="password_match" runat="server" 
                        ErrorMessage="Password must match" 
                        ControlToValidate="confirm_password" 
                        ControlToCompare="password_textbox">
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="register_button" runat="server" Text="Register" OnClick="register_button_Click" />
                </td>
                <td>
                    <asp:Label ID="result_label" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
