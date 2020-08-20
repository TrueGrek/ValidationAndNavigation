<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeView.aspx.cs" Inherits="HierarchicalControls.TreeView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" NodeIndent="15">
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />

                <Nodes>
                <asp:TreeNode Text="Поисковики">
                    <asp:TreeNode Text="Google" NavigateUrl="http://google.com"></asp:TreeNode>
                    <asp:TreeNode Text="Yandex" NavigateUrl="http://yandex.ru"></asp:TreeNode>
                    <asp:TreeNode Text="Yahoo" NavigateUrl="http://yahoo.com"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Регистраторы">
                    <asp:TreeNode Text="Name.com" NavigateUrl="http://name.com"></asp:TreeNode>
                    <asp:TreeNode Text="Godaddy" NavigateUrl="http://godaddy.com"></asp:TreeNode>
                    <asp:TreeNode Text="Имена UA" NavigateUrl="http://imena.ua"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>

                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
