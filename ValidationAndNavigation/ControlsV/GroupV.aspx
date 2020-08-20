<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="GroupV.aspx.cs" Inherits="ValidationAndNavigation.ControlsV.GroupV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
            <tr>
                <td>Имя</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox1" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1" ErrorMessage="Error" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Фамилия</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox2" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2" ErrorMessage="Error" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" Text="Первая группа" runat="server" 
                    ValidationGroup="g1" />
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox3" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox3" ErrorMessage="Error" 
                    ValidationGroup="g2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Домашняя страница
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox4" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4" ErrorMessage="Error" 
                    ValidationGroup="g2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button2" Text="Вторая группа" runat="server" 
                    ValidationGroup="g2" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
