<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style4 {
            width: 100%;
        }
        .auto-style2 {
            height: 50px;
            width: 307px;
        }
        .auto-style1 {
            height: 50px;
        }
        .auto-style3 {
            width: 307px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="338px"></asp:TextBox>
                        <asp:Label ID="lblFirstName" runat="server" ForeColor="Red" Text=" *This Field Is Required" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Last Name</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="338px"></asp:TextBox>
                        <asp:Label ID="lblLastName" runat="server" ForeColor="Red" Text=" *This Field Is Required" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="338px"></asp:TextBox>
                        <asp:Label ID="lblEmail" runat="server" ForeColor="Red" Text=" *This Field Is Required" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Country</td>
                    <td>
                        <asp:DropDownList ID="lstCountry" runat="server" Width="338px">
                            <asp:ListItem>United Kingdom</asp:ListItem>
                            <asp:ListItem>United States</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="338px"></asp:TextBox>
                        <asp:Label ID="lblPassword" runat="server" ForeColor="Red" Text=" *This Field Is Required" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Repeat Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" Width="338px"></asp:TextBox>
                        <asp:Label ID="lblPassword2" runat="server" ForeColor="Red" Text=" *This Field Is Required" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <p>
            <asp:TextBox ID="txtDisplay" runat="server" Height="615px" ReadOnly="True" TextMode="MultiLine" Width="1044px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
