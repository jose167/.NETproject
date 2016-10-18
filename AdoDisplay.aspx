<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdoDisplay.aspx.vb" Inherits="AdoDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" RowStyle-BackColor="#A1DCF2"
    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White">
    <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="CustomerID" HeaderText="CustomerID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="ContactName" HeaderText="Contact Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
    </Columns>
</asp:GridView>
    </div>
    </form>
</body>
</html>
