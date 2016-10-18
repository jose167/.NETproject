<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newProduct.aspx.vb" Inherits="newProduct" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
   
<script language="VB" runat="server">

    Sub Submit(Sender As Object, E As EventArgs)
        Dim objConnection As OleDbConnection
        Dim objCmd As OleDbCommand
        Dim strConnection As String
        Dim strSQL As String
     
        Dim myproductId As String
        Dim mynameP As String
        Dim mysupplierId As String
        Dim mycategoriaId As String
        Dim myquantity As String
        Dim myunitprice As String
        Dim myunitInStock As String
        Dim myUnitInOrder As String
        Dim myReorderLevel As String
        Dim myDiscontinued As String
        myproductId = Request.Form("productId")
        mynameP = Request.Form("nameP")
        mysupplierId = Request.Form("supplierId")
        mycategoriaId = Request.Form("categoriaId")
        myquantity = Request.Form("quantity")
        myunitprice = Request.Form("unitprice")
        myunitInStock = Request.Form("unitInStock")
        myUnitInOrder = Request.Form("UnitInOrder")
        myReorderLevel = Request.Form("ReorderLevel")
        myDiscontinued = Request.Form("Discontinued")
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0;" & _
                        "Data Source=|DataDirectory|Northwind.mdb;"
  
        ' Create and open the connection object
        objConnection = New OleDbConnection(strConnection)
        objConnection.Open()
        ' set the SQL string
        strSQL = "INSERT INTO Products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)" & _
                          " VALUES ('" + myproductId + "','" + mynameP + "','" + mysupplierId + "','" + mycategoriaId + "','" + myquantity + "','" + myunitprice + "','" + myunitInStock + "','" + myUnitInOrder + "','" + myReorderLevel + "','" + myDiscontinued + "')"
       
        
        ' Create the Command and set its properties
        objCmd = New OleDbCommand(strSQL, objConnection)
    
        ' execute the command
        objCmd.ExecuteNonQuery()
        Label1.Text = "New Product has been added to the Produts Table"

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
       
      <form id="form1" runat="server">
        <div class="superContainer border padding">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server"><h2 class="sub-heading"></h2></asp:Label>

        <label class="control-label col-sm-2" for="Company Name">Product ID</label>
        <asp:TextBox ID="productId" class="form-control" placeholder="Product ID" runat="server"></asp:TextBox>
        </div>   
           <div class="form-group">   
         <label class="control-label col-sm-2" for="ContactName">Product Name</label>
        <asp:TextBox ID="nameP" class="form-control" placeholder="Product Name" runat="server" required="required"></asp:TextBox>
       </div>
           <div class="form-group">
           <label class="control-label col-sm-2" for="Contact title">Supplier Id</label>
               <asp:TextBox ID="supplierId" class="form-control" placeholder="Supplier Id" runat="server" required="required"></asp:TextBox>
        </div>
          <div class="form-group">
               <label class="control-label col-sm-2" for="Address">Category Id</label>
           <asp:TextBox ID="categoriaId" class="form-control" placeholder="Category Id" runat="server" required="required"></asp:TextBox>
        </div>
         
          <div class="form-group">
              <label class="control-label col-sm-2" for="city">Quantity</label>
        <asp:TextBox ID="quantity"  class="form-control" placeholder="Quantity per unit" runat="server" required="required"></asp:TextBox>
          </div>
         <div class="form-group">
              <label class="control-label col-sm-2" for="city">Unit Price</label>
        <asp:TextBox ID="unitprice"  class="form-control" placeholder="unit price" runat="server" required="required"></asp:TextBox>
          </div>
         <div class="form-group">
              <label class="control-label col-sm-2" for="city">Unit in Stuck</label>
        <asp:TextBox ID="UnitInStock"  class="form-control" placeholder="Unit in Stuck" runat="server" required="required"></asp:TextBox>
          </div>
            <div class="form-group">
              <label class="control-label col-sm-2" for="city">Unit In Order</label>
        <asp:TextBox ID="UnitInOrder"  class="form-control" placeholder="Unit In Order" runat="server" required="required"></asp:TextBox>
          </div>
         <div class="form-group">
              <label class="control-label col-sm-2" for="city">Reorder Level</label>
        <asp:TextBox ID="ReorderLevel"  class="form-control" placeholder="Reorder Level" runat="server" required="required"></asp:TextBox>
          </div>
         <div class="form-group">
              <label class="control-label col-sm-2" for="city">Discontinued</label>
             <asp:CheckBox ID="Discontinued" class="form-control" runat="server" />
          </div>
          <div class="form-group">
        <asp:Button ID="Button1" OnClick="submit" runat="server" class="btn btn-default" Text="Submit" />
            </div>

        </div>
          </form>
          </body>
    </html>
