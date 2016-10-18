<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ErrorPage.aspx.vb" Inherits="ErrorPage" %>
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
    <form id="form1" runat="server">
    <div class="superContainer">
        <img class="logo2" src="../images/logo.jpg"/>
        <h1 class="heading-primary">Sorry...</h1>
        <h4 class="sub-heading">We just had an Internal error on our website.</h4>
        <p class="sub-heading"><a href="Default.aspx">Back to HOME PAGE</a></p>
        <img class="internet" src="../images/internet.jpg"/>

    </div>
    </form>
</body>
</html>
