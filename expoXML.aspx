<%@ Page Language="VB" AutoEventWireup="false" CodeFile="expoXML.aspx.vb" Inherits="expoXML" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">

    Sub Submit(Sender As Object, E As EventArgs)

        'Lets declare our variables
        Dim strConnection As String
        Dim strSQL As String
        Dim objDataSet As New DataSet()
        Dim objConnection As OleDbConnection
        Dim objAdapter As OleDbDataAdapter

        ' set the connection and query details
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0; " & _
                        "Data Source=|DataDirectory|Northwind.mdb;"
        strSQL = "SELECT ProductId, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice FROM Products;"

        ' open the connection and set the command
        objConnection = New OleDbConnection(strConnection)
        objAdapter = New OleDbDataAdapter(strSQL, objConnection)

        ' fill the dataset with the data
        objAdapter.Fill(objDataSet, "Products")

        'Lets create the XML file called Employees

        objDataSet.WriteXml(Server.MapPath("Products.xml"))

        'Now let’s show a link to the XML we have just created
    
        Response.Write("<a href='Products.xml'>View XML file</a>")

  End Sub

</script>

    <form id="form1" runat="server">
  
        <asp:Button ID="Button1" OnClick="submit"  Text="Submit" runat="server"/>
    
      </form>
    