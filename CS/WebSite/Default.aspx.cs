using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;
using System.Data;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    protected void ASPxGridView1_HtmlRowPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableRowEventArgs e)
    {
        ColorGroupRow(e, Color.Pink, 0);
    }

    private void ColorGroupRow(ASPxGridViewTableRowEventArgs e, Color backColor, int rowIndex) {
        if (e.RowType == GridViewRowType.Group && grid.GetRowLevel(e.VisibleIndex) == rowIndex)
            e.Row.BackColor = backColor;
        else
        {
            if (e.Row.Cells.Count > rowIndex)
                e.Row.Cells[rowIndex].BackColor = backColor;
            if (rowIndex == 0)
                ColorGroupRow(e, Color.Lavender, 1);
        }
    }

}