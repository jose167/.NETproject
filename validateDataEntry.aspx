<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="validateDataEntry.aspx.vb" Inherits="validateDataEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:DataString.ProviderName %>" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [SupplierID] = ?, [CategoryID] = ?, [QuantityPerUnit] = ?, [UnitPrice] = ?, [UnitsInStock] = ?, [UnitsOnOrder] = ?, [ReorderLevel] = ?, [Discontinued] = ? WHERE [ProductID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="QuantityPerUnit" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int16" />
            <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
            <asp:Parameter Name="ReorderLevel" Type="Int16" />
            <asp:Parameter Name="Discontinued" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="QuantityPerUnit" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int16" />
            <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
            <asp:Parameter Name="ReorderLevel" Type="Int16" />
            <asp:Parameter Name="Discontinued" Type="Boolean" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <div class="superContainer border padding">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            <h3 class="sub-heading">Edit Product</h3>
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            <br />
            ProductName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            <br />
            SupplierID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>' />
            <br />
            <br />
            CategoryID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
            <br />
            <br />
            QuantityPerUnit:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>' />
            <br />
            <br />
            UnitPrice:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            <br />
            UnitsInStock:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UnitsInStockTextBox" runat="server" Text='<%# Bind("UnitsInStock") %>' />
            <br />
            <br />
            UnitsOnOrder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            <br />
            ReorderLevel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ReorderLevelTextBox" runat="server" Text='<%# Bind("ReorderLevel") %>' />
            <br />
            <br />
            Discontinued:
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' />
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <h3 class="sub-heading">Insert new Product</h3>I
            <br />
            ProductName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ProductNameTextBox" ErrorMessage="Introduce the product name" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            SupplierID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>' />
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SupplierIDTextBox" ErrorMessage="Introduce ID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            CategoryID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
            &nbsp;&nbsp; &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CategoryIDTextBox" ErrorMessage="Field required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <br />
            <br />
            Quantity Per Unit:&nbsp;
            <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="QuantityPerUnitTextBox" ErrorMessage="Field required (Decimal)" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            UnitsInStock:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UnitsInStockTextBox" runat="server" Text='<%# Bind("UnitsInStock") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UnitsInStockTextBox" ErrorMessage="Field required (Decimal)" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            UnitsOnOrder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" Text='<%# Bind("UnitsOnOrder") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UnitsOnOrderTextBox" ErrorMessage="Field required (Decimal)" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            ReorderLevel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ReorderLevelTextBox" runat="server" Text='<%# Bind("ReorderLevel") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ReorderLevelTextBox" ErrorMessage="Field required (Decimal)" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Discontinued:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <h3 class="heading-primary center">Product</h3>
            <p>(validation routine to submitted form)</p>
             <br />
            <br />
            ProductID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            <br />
            ProductName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            <br />
            SupplierID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Bind("SupplierID") %>' />
            <br />
            <br />
            CategoryID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>' />
            <br />
            <br />
            QuantityPerUnit:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="QuantityPerUnitLabel" runat="server" Text='<%# Bind("QuantityPerUnit") %>' />
            <br />
            <br />
            UnitPrice:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            <br />
            UnitsInStock:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="UnitsInStockLabel" runat="server" Text='<%# Bind("UnitsInStock") %>' />
            <br />
            <br />
            UnitsOnOrder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="UnitsOnOrderLabel" runat="server" Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            <br />
            ReorderLevel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ReorderLevelLabel" runat="server" Text='<%# Bind("ReorderLevel") %>' />
            <br />
            <br />
            Discontinued:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' Enabled="false" />
            <br />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" ForeColor="#0033CC" Text="Edit" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#0033CC" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        </div>
    <br />
    <br />
    <br />
</asp:Content>

