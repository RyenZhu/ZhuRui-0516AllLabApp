<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrencyConverter.aspx.cs" Inherits="LabAss6.CurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Chinese"></asp:Label><asp:TextBox ID="txtChinese" runat="server"></asp:TextBox>Chinese Yuan to Dollars.
        <div>
            <asp:Button ID="btnOk" runat="server" Text="OK" OnClick="btnOk_Click" />
        </div>
        <asp:Label ID="lbl2" runat="server"></asp:Label>
    </form>
</body>
</html>
