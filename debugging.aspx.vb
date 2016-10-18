
Partial Class debugging
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = "The date and time is " & Now()
        Trace.Write(TextBox1.Text)
    End Sub
End Class
