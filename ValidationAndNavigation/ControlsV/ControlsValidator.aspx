<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="ControlsValidator.aspx.cs" Inherits="ValidationAndNavigation.ControlsValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%//Долго не мог запустить код. Выдавало ошибку. 
              //WebForms UnobtrusiveValidationMode requires a ScriptResourceMapping for 'jquery'. Please add a ScriptResourceMapping named jquery(case-sensitive).
              //Решил я её, вставив следующую строчку в page directory, который на самом вреху
              //UnobtrusiveValidationMode="None"%>
        Логин
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
        <!--RequiredFieldValidator - валидатор проверяющий наличие значений в поле ввода.-->
        <!--ControlToValidate - атрибут для ID элемента управление значение которого будет проверяться-->
        <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" 
            runat="server"
            ControlToValidate="TextBox1"
            ErrorMessage="Это поле не может быть пустым!"
            ForeColor="Red" >
        </asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="OkButton_Click" />
        </div>

    </form>
</body>
</html>
