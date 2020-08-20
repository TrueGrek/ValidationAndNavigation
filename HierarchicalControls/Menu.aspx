<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="HierarchicalControls.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" OnMenuItemClick="Menu1_MenuItemClick" runat="server" Orientation="Horizontal" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">

                <Items>
                    <asp:MenuItem Text="Item 1">
                    <asp:MenuItem Text="Sub Menu 1" NavigateUrl="TreeView.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Sub Menu 2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Item 2">
                    <asp:MenuItem Text="Sub Menu 1"></asp:MenuItem>
                    <asp:MenuItem Text="Sub Menu 2"></asp:MenuItem>
                    <asp:MenuItem Text="Sub Menu 3">
                        <asp:MenuItem Text="Sub Sub Menu 1"></asp:MenuItem>
                        <asp:MenuItem Text="Sub Sub Menu 2"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Item 3"></asp:MenuItem>
                <asp:MenuItem Text="Item 4"></asp:MenuItem>
                </Items>

                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
        </div>
    </form>
</body>
</html>
