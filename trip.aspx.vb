Imports System.Data

Partial Class _Default
    Inherits Page


    Protected Sub Page_Load(ByVal sender As Object, _
      ByVal e As System.EventArgs) Handles Me.Load
      
    End Sub

    Sub BindGrid()
        Dim oDs As New DataSet
        oDs.ReadXml(Request.PhysicalApplicationPath + "App_Data/SummerTrip.xml")
        GridView.DataSource = oDs
        GridView.DataBind()

    End Sub

    Protected Sub GridView_PageIndexChanging(ByVal sender As Object, _
         ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) _
         Handles GridView.PageIndexChanging
        GridView.PageIndex = e.NewPageIndex
        BindGrid()
    End Sub

    Protected Sub GridView_RowDeleting(ByVal sender As Object, _
       ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) _
       Handles GridView.RowDeleting
        BindGrid()
        Dim oDs As DataSet = GridView.DataSource
        oDs.Tables(0).Rows(GridView.Rows(e.RowIndex).DataItemIndex).Delete()
        oDs.WriteXml(Request.PhysicalApplicationPath + "App_Data/SummerTrip.xml")
        BindGrid()
    End Sub

    Protected Sub GridView_RowEditing(ByVal sender As Object, _
        ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) _
        Handles GridView.RowEditing
        GridView.EditIndex = e.NewEditIndex
        BindGrid()
    End Sub

    Protected Sub GridView_RowCancelingEdit(ByVal sender As Object, _
       ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) _
       Handles GridView.RowCancelingEdit
        GridView.EditIndex = -1
        BindGrid()
    End Sub

    Protected Sub GridView_RowUpdating(ByVal sender As Object, _
         ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) _
         Handles GridView.RowUpdating
        ' Get the new values from the GridView controls
        Dim i As Integer = GridView.Rows(e.RowIndex).DataItemIndex
        Dim strId As String = CType(GridView.Rows(e.RowIndex).Cells(2).Controls(0), TextBox).Text
        Dim strName As String = CType(GridView.Rows(e.RowIndex).Cells(3).Controls(0), TextBox).Text
        Dim strTel As String = CType(GridView.Rows(e.RowIndex).Cells(4).Controls(0), TextBox).Text
        GridView.EditIndex = -1
        BindGrid()
        ' Update the XML file using the new values

        Dim oDs As DataSet = GridView.DataSource
        oDs.Tables(0).Rows(i).Item(0) = txtTitle
        oDs.Tables(0).Rows(i).Item(1) = txtISBN
        oDs.Tables(0).Rows(i).Item(2) = txtPublisher
        oDs.WriteXml(Request.PhysicalApplicationPath + "App_Data/SummerTrip.xml")
        BindGrid()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, _
           ByVal e As System.EventArgs) Handles Button1.Click
        BindGrid()
        Dim oDs As DataSet = GridView.DataSource
        Dim oDr As DataRow = oDs.Tables(0).NewRow
        oDr("Title") = txtTitle.Text
        oDr("ISBN") = txtISBN.Text()
        oDr("Publisher") = txtPublisher.Text()
        oDs.Tables(0).Rows.Add(oDr)
        oDs.WriteXml(Request.PhysicalApplicationPath + "App_Data/SummerTrip.xml")
        BindGrid()
    End Sub
End Class