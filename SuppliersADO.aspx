<%@ Page Language="VB" AutoEventWireup="true" CodeFile="SuppliersADO.aspx.vb" Inherits="SuppliersADO" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">

    Sub Submit(Sender As Object, E As EventArgs)
        Dim objConnection As OleDbConnection
        Dim objCmd As OleDbCommand
        Dim strConnection As String
        Dim strSQL As String
     
        Dim myfname As String
        Dim mysname As String
        Dim mytitle As String
        Dim myaddress As String
        Dim myscity As String
        myfname = Request.Form("fname")
        mysname = Request.Form("sname")
        mytitle = Request.Form("title")
        myaddress = Request.Form("address")
        myscity = Request.Form("city")
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0;" & _
                        "Data Source=|DataDirectory|Northwind.mdb;"
  
        ' Create and open the connection object
        objConnection = New OleDbConnection(strConnection)
        objConnection.Open()
        ' set the SQL string
        strSQL = "INSERT INTO Suppliers(CompanyName,ContactName, ContactTitle, Address, City)" & _
                          " VALUES ('" + myfname + "','" + mysname + "','" + mytitle + "','" + myaddress + "','" + myscity +  "')"
       
        
        ' Create the Command and set its properties
        objCmd = New OleDbCommand(strSQL, objConnection)
    
        ' execute the command
        objCmd.ExecuteNonQuery()
        Label1.Text = "Command has been run and the record has been added"

    End Sub

</script>
<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> World Advert Solution</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body>
    <div>
        <div class="jumbotron">
         <div class="container text-center">
            <h1>Global Advent Solution</h1>      
                <p>Mission, Vission & Values</p>
             <p>&nbsp;</p>
           </div>
         </div>

        <div class="collapse navbar-collapse navbar-default">
            <div class="container text-center">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/"><span class="glyphicon glyphicon-globe"></span></a>
                </div>
                <div class="navbar navbar">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/default">Home</a></li>
                        <li><a runat="server" href="~/customers">Customers</a></li>
                        <li><a runat="server" href="~/AllProducts">Current Stock</a></li>
                        <li><a runat="server" href="~/SuppliersADO">Suppliers</a></li>
                        <li><a runat="server" href="~/masterDetails">Orders</a></li>
                        <li><a runat="server" href="~/About">About</a></li>       
                      </ul>
                </div>
            </div>
        </div>
          

 <div class="superContainer2 border padding"> 
    <h2 class="heading-primary">Add new Supplier</h2>
      <p>web form using an ADO.net connection to the ‘Suppliers’ table </p>
      <form id="form1" runat="server">
    <div class="form-group">
        <label class="control-label col-sm-2" for="Company Name">Company Name</label>
        <asp:TextBox ID="fname" class="form-control" placeholder="Enter email" runat="server" required="required"></asp:TextBox>
</div>   
           <div class="form-group">   
         <label class="control-label col-sm-2" for="ContactName">Contact Name</label>
        <asp:TextBox ID="sname" class="form-control" placeholder="Contact Name" runat="server" required="required"></asp:TextBox>
       </div>
           <div class="form-group">
           <label class="control-label col-sm-2" for="Contact title">Contact title</label>
               <asp:TextBox ID="title" class="form-control" placeholder="Contact title" runat="server" required="required"></asp:TextBox>
        </div>
          <div class="form-group">
               <label class="control-label col-sm-2" for="Address">Address</label>
           <asp:TextBox ID="address" class="form-control" placeholder="address" runat="server" required="required"></asp:TextBox>
        </div>
         
          <div class="form-group">
              <label class="control-label col-sm-2" for="city">city</label>
        <asp:TextBox ID="city"  class="form-control" placeholder="city" runat="server" required="required"></asp:TextBox>
          </div>
          <div class="form-group">
        <asp:Button ID="Button1" OnClick="submit" runat="server" class="btn btn-default" Text="Submit" />
            </div>
      
        <asp:Label ID="Label1" runat="server"><h2 class="sub-heading"></h2></asp:Label>
    
        <h2 class="heading-primary">All Supliers</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataString %>" ProviderName="<%$ ConnectionStrings:DataString.ProviderName %>" SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SupplierID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" InsertVisible="False" ReadOnly="True" SortExpression="SupplierID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
    
    </div>
     </form>
     </body>
    </html>
