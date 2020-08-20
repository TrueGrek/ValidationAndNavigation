<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="ValidatorSimmary.aspx.cs" Inherits="ValidationAndNavigation.ControlsV.ValidatorSimmary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Логин <asp:TextBox ID="TextBoxLogin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="TextBoxLogin" 
            ID="RequiredFieldValidator1"
            runat="server" 
            ErrorMessage="Логин не введен." 
            Display="None">
        </asp:RequiredFieldValidator>
        <br />
        Пароль <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="TextBoxPass" 
            ID="RequiredFieldValidator2"
            runat="server" 
            ErrorMessage="Пароль не введен." 
            Display="None">
        </asp:RequiredFieldValidator>

        <br />
        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="ButtonOk_Click" />
        <br />
            
        <!--ValidationSummary - серверный элемент управления, который позволяет вывести все ошибки при заполнении формы в одном месте-->
        <asp:ValidationSummary 
            ID="ValidationSummary1" 
            runat="server" 
            DisplayMode="BulletList"
            ForeColor="Red" />
        <br />
        </div>
    </form>
</body>
</html>
