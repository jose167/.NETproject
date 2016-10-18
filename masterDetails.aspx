<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="masterDetails.aspx.vb" Inherits="masterDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataString %>" ProviderName="<%$ ConnectionStrings:DataString.ProviderName %>" SelectCommand="SELECT [CustomerID], [ContactName], [Address], [City], [PostalCode], [Country], [Phone] FROM [Customers]"></asp:SqlDataSource>
<br />
    <div class="superContainer border padding">
    <h1 class="heading-primary">Master Details Ordes</h1>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
        <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
    </Columns>
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DataString %>" ProviderName="<%$ ConnectionStrings:DataString.ProviderName %>" SelectCommand="SELECT [OrderID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia] FROM [Orders] WHERE ([CustomerID] = ?)">
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="CustomerID" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
        <asp:Label  ID="Label1" runat="server" Text="Label"><h2 class="sub-heading"></h2></asp:Label>
        <br />
<br />
<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
        <asp:BoundField DataField="RequiredDate" HeaderText="RequiredDate" SortExpression="RequiredDate" />
        <asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" SortExpression="ShippedDate" />
        <asp:BoundField DataField="ShipVia" HeaderText="ShipVia" SortExpression="ShipVia" />
    </Columns>
</asp:GridView>
<br />
</div>
</asp:Content>

