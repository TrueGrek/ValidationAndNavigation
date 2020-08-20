<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="RegularException.aspx.cs" Inherits="ValidationAndNavigation.ControlsV.RegularException" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Email<asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        <!--RegularExpressionValidator - Проверка значения в поле ввода с помощью регулярного выражения-->
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1"
            runat="server" 
            ControlToValidate="TextBoxEmail"
            ErrorMessage="Введите Email адрес еще раз." 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ForeColor="Red">
        </asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="ButtonOk" runat="server" Text="Ok" OnClick="ButtonOk_Click" />
        </div>
    </form>
</body>
</html>
