
Partial Class masterDetails
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Label1.Text = "Your search result: Order details by customer selected"
    End Sub
End Class
