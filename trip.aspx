<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="trip.aspx.vb" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <form id="form1">
    <div>
        <asp:GridView ID="GridView" runat="server" AllowPaging="True" PageSize="3">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Button" /></div>
    </form>

</asp:Content>