<%@ Page Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AllProducts.aspx.vb" Inherits="AllProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="border">
    <h1 class="heading-primary">All Products</h1>
        <p class="sub-heading">Data Access Layer connected to the stock table</p>
    <form id="form1" >
    <div class="padding">
        
        <a href="ProductXMLDisplay.aspx"><p>View Product.XML</p></a>
        <a href="expoXML.aspx"><p>Export XML file</p></a>
        <a href="validateDataEntry.aspx"><p>Edit or Add New Products</a> Data Access Layer connected to the stock table</p>
        <p>
            <asp:GridView ID="GridView1" runat="server"
             CssClass="DataWebControlStyle">
               <HeaderStyle CssClass="HeaderStyle" />
               <AlternatingRowStyle CssClass="AlternatingRowStyle" />
            </asp:GridView>
             </p>
    </div>
    </form>
        </div>
</asp:Content>
