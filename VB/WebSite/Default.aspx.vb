Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxGridView
Imports System.Data
Imports System.Drawing

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub ASPxGridView1_HtmlRowPrepared(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridView.ASPxGridViewTableRowEventArgs)
		ColorGroupRow(e, Color.Pink, 0)
	End Sub

	Private Sub ColorGroupRow(ByVal e As ASPxGridViewTableRowEventArgs, ByVal backColor As Color, ByVal rowIndex As Integer)
		If e.RowType = GridViewRowType.Group AndAlso grid.GetRowLevel(e.VisibleIndex) = rowIndex Then
			e.Row.BackColor = backColor
		Else
			If e.Row.Cells.Count > rowIndex Then
				e.Row.Cells(rowIndex).BackColor = backColor
			End If
			If rowIndex = 0 Then
				ColorGroupRow(e, Color.Lavender, 1)
			End If
		End If
	End Sub

End Class