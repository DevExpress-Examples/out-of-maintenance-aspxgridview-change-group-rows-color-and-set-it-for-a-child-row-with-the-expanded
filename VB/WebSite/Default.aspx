<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxGridView - How to change the background color of group rows and maintain the same color for the corresponding cell of child rows when group row is expanded</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>

		<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" 
			DataSourceID="AccessDataSource1" KeyFieldName="OrderID" 
			ClientInstanceName="grid" onhtmlrowprepared="ASPxGridView1_HtmlRowPrepared">
			<Columns>
				<dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CustomerID" GroupIndex="0" SortIndex="0" 
					SortOrder="Ascending" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="EmployeeID" GroupIndex="1" SortIndex="1" 
					SortOrder="Ascending" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="3">
				</dx:GridViewDataDateColumn>
				<dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="4">
				</dx:GridViewDataDateColumn>
				<dx:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
			DataFile="~/App_Data/Northwind.mdb" 
			SelectCommand="SELECT [OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShippedDate], [ShipCountry] FROM [Orders]">
		</asp:AccessDataSource>

	</div>
	</form>
</body>
</html>