<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Berca.Index.index" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<script type="text/javascript">

    function openPopup() {

        window.open("/Control/ControlAddInvo.aspx", "_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");

    }
    function openCancel() {
        var NoInvoice = getQueryString("NoInvoice");
        window.open("/Control/ControlCancelInvo.aspx?NoInvoice=" + NoInvoice, "_blank", "WIDTH=700,HEIGHT=400,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");

    }
    function closeWindow() {
        window.close();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Programming Test Berca</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" align ="center" >
            <dx:ASPxRoundPanel ID="panel" runat="server" Width="150px" HeaderText="" ShowHeader="false">
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server">
                        <div class="value label">
                            <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                                No. Invoice 
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtInvNo" runat="server" Width="200px">

                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        <br />
                        <br />
                        <div class="row">
                            <div style="width: 325px" align="center">
                                <dx:ASPxButton ID="btnRetrieve" runat="server" Text="Retrieve" AutoPostBack="False">
                                    <ClientSideEvents Click="function(s, e) {
	gvInvoice.PerformCallback();
}"></ClientSideEvents>
                                </dx:ASPxButton>
                            </div>
                            <div class="end">
                            </div>
                        </div>
                    </dx:PanelContent>

                </PanelCollection>
            </dx:ASPxRoundPanel>
            <br />
            <br />
            <div class="row" align="left">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" OnClientClick="return openPopup()" ImageUrl="~/CSS/add-file.png" Height="45px" />
                            </td>
                            <td style="width:1900px">
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" OnClientClick="return openReport()" ImageUrl="~/CSS/report_2.png" Height="55px" />
                            </td>
                        </tr>
                    </table>

            </div>
        </div>
            <div class="end">
                <br />
            </div>
        <div class="row" align ="center">
        <dx:ASPxGridView ID="gvInvoice" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvInvoice"
            OnCustomCallback="gvInvoice_CustomCallback" DataSourceID="ObjectDataSource1" KeyFieldName="CustomerID" OnCustomColumnDisplayText="gvInvoice_CustomColumnDisplayText">
<SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" AllowSelectSingleRowOnly="true" />
<SettingsPopup>
<FilterControl AutoUpdatePosition="False"></FilterControl>
</SettingsPopup>
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:GridViewDataTextColumn Caption="No" FieldName="NO" UnboundType="Integer" VisibleIndex="0">
                    <Settings AllowAutoFilter="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tool" FieldName="BUTTON" VisibleIndex="0" UnboundType="String" Width="80px">
                     <DataItemTemplate>
                         <dx:ASPxButton ID="btnViewInv" runat="server" Text="" OnClick="btnViewInv_Click" Image-Url="~/CSS/view.png" ToolTip="View Invoice"
                             Image-Height="20px" Image-Width="20px"></dx:ASPxButton>
                         <asp:ImageButton ID="ImageButton1" runat="server" OnClientClick="return openCancel()" ImageUrl="~/CSS/delete.png" Height="40px" ToolTip="Cancel Invoice"
                             OnClick="btnCancelInv_Click"/>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="invno" VisibleIndex="0" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="inv" VisibleIndex="1" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="invthn" VisibleIndex="2" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="customername" VisibleIndex="3" Caption="Customer Name">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="4" ReadOnly="True" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TOPDays" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ThnEnt" VisibleIndex="6" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BlnEnt" VisibleIndex="7" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TglEnt" VisibleIndex="8" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Currency" VisibleIndex="9" PropertiesTextEdit-DisplayFormatString="N">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="InvAmtIDR" VisibleIndex="10" PropertiesTextEdit-DisplayFormatString="N">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OpenAmtIDR" VisibleIndex="11" PropertiesTextEdit-DisplayFormatString="N">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Remark" VisibleIndex="12">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="NoInvoice" VisibleIndex="2" ReadOnly="True" Caption=" No. Invoice">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TglInvoice" VisibleIndex="5" ReadOnly="True" Caption="Tgl. Invoice">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Guid" VisibleIndex="15" Visible="false">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByNoInv" TypeName="Berca.DataSet.dsBercaTableAdapters.View_OutStandingTableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="%%" Name="NoInvoice" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bercaConnectionString %>" SelectCommand="Select * From Berca.Dbo.View_Ost"></asp:SqlDataSource>
            </div>

    </form>
</body>
</html>


<style type="text/css">

    div.name2 {
    float: left;
    width: 127px;
    text-align: right;
    margin-right: 10px;
    margin-top: 3px;
}

    div.label {
    margin-top: 3px;
    margin-bottom: 0px;
}
    div.value {
    float: left;
    padding-right: 5px;
}
    div.end {
    clear: both;
}

div.spacer {
    display: block;
    height: 15px;
    width: 15px;
    margin-top: 5px;
    margin-bottom: 5px;
}

div.center {
    margin: 0px auto;
}
</style>