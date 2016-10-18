Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Partial Class AdoDisplay
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.BindGrid()
        End If
    End Sub

    Private Sub BindGrid()
        Dim strConnString As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(strConnString)
            Using cmd As New SqlCommand()
                cmd.CommandText = "select top 10 * from Customers"
                cmd.Connection = con
                con.Open()
                GridView1.DataSource = cmd.ExecuteReader()
                GridView1.DataBind()
                con.Close()
            End Using
        End Using
    End Sub
End Class
