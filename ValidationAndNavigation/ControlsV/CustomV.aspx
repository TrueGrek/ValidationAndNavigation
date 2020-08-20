<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="CustomV.aspx.cs" Inherits="ValidationAndNavigation.ControlsV.CustomV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
        // source - span, в который выводиться сообщение об ошибке.
        // arguments - дополнительные параметры:
        // Value - значение поля ввода.
        // IsValid - корректность введенных данных в поле ввода.
        function validate(source, arguments) {
            if (arguments.Value % 2 == 0) {
                arguments.IsValid = true;
            }
            else {
                source.innerHTML = "Значение должно быть четным числом";
                arguments.IsValid = false;
            }
        }
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>Введите четное значение 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ControlToValidate="TextBox1" OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="validate"></asp:CustomValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="OK" OnClick="ButtonOk_Click" />
        </div>
    </form>
</body>
</html>
