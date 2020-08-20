<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None"  CodeBehind="CompareValidator.aspx.cs" Inherits="ValidationAndNavigation.ControlsV.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Пароль<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />    
            Повторите пароль<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Не сходиться дорогой, попробуй ещё раз" ControlToCompare="TextBox1" ControlToValidate="TextBox2"></asp:CompareValidator>
        </div>
    </form>
</body>
</html>
