<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlViewInvo.aspx.cs" Inherits="Berca.Control.ControlViewInvo" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div class="row" align ="center">
            <dx:ASPxRoundPanel ID="panel" runat="server" Width="550px" HeaderText="Detail Invoice" ShowHeader="true" >
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server">
                        <div class="value label">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                                Nomor Invoice 
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtNoInvoice" runat="server" Width="170px" Enabled="false" 
                                                Font-Bold="True" Font-Italic="True" ForeColor="#0066FF"></dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                                Nama Customer 
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtCustNam" runat="server" Width="170px" Enabled="false" 
                                                Font-Bold="True" Font-Italic="True" ForeColor="#0066FF"></dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                                Invoice Date
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxDateEdit ID="deInvoice" runat="server" Enabled="false" DisplayFormatString="yyyy-MM-dd"></dx:ASPxDateEdit>
                                        </td>
                                        <td>&nbsp;&nbsp;
                                        </td>
                                        <td width="90px" align="right">Aging Days (D):
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtAgingDays" runat="server" Width="50px" DisplayFormatString="N" Enabled="false"
                                                HorizontalAlign="Right" Text="0" ClientInstanceName="txtAgingDays" Font-Bold="true">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                                Due Date
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxDateEdit ID="deDueDate" runat="server" Enabled="false" DisplayFormatString="yyyy-MM-dd"></dx:ASPxDateEdit>
                                        </td>
                                        <td>&nbsp;&nbsp;
                                        </td>
                                        <td width="90px" align="right">Aging Due (D):
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtAgingDue" runat="server" Width="50px" DisplayFormatString="N" Enabled="false"
                                                HorizontalAlign="Right" Text="0" ClientInstanceName="txtAgingDue" Font-Bold="true">
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                                Rate Currency
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtRateCurr" runat="server" Width="170px" Enabled="false" DisplayFormatString="N"
                                                HorizontalAlign="Right" ClientInstanceName="txtRateCurr" Text="1" Font-Bold="true">
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td>&nbsp;&nbsp;
                                    </td>
                                        <td width="90px" align="right">Currency :
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                    <td>
                                        <dx:ASPxTextBox ID="txtCurrency" runat="server" Width="50px" Enabled="false" DisplayFormatString="N"
                                            HorizontalAlign="Right" Text="IDR" ClientInstanceName="txtCurrency" Font-Bold="true">
                                        </dx:ASPxTextBox>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                               Invoice Amount
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtInvAmt" runat="server" Width="170px" Text="0" DisplayFormatString="N" ClientInstanceName="txtInvAmt" Enabled="false"
                                                HorizontalAlign="Right" Font-Bold="true">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                               Open Amount
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtOpenAmt" runat="server" Width="170px" Text="0" DisplayFormatString="N" ClientInstanceName="txtOpenAmt" Enabled="false"
                                                HorizontalAlign="Right" Font-Bold="true">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        <br />
                    </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
        <div class="end">
                <br />
            </div>
        <div class="row" align ="center">
            <dx:ASPxGridView ID="gvCollection" ClientInstanceName="gvCollection" runat="server" AutoGenerateColumns="False" DataSourceID="odsCollection" KeyFieldName="CollectionID"
                OnInit="gvCollection_Init" OnCustomUnboundColumnData="gvCollection_CustomUnboundColumnData" OnCustomColumnDisplayText="gvCollection_CUsstomColumnDisplayText">
                <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" AllowSelectSingleRowOnly="true" />
<SettingsPopup>
<FilterControl AutoUpdatePosition="False"></FilterControl>
</SettingsPopup>
                <Columns>
                    <dx:GridViewDataTextColumn Caption="No" FieldName="NO" UnboundType="Integer" VisibleIndex="0">
                    <Settings AllowAutoFilter="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tool" FieldName="BUTTON" VisibleIndex="0" UnboundType="String">
                     <DataItemTemplate>
                         <dx:ASPxButton ID="btnCancelCollection" runat="server" Text="" OnClick="btnCancelCollection_Click" Image-Url="~/CSS/cancel.png"
                             Image-Height="20px" Image-Width="20px" ToolTip="Cancel Invoice"></dx:ASPxButton>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CollectionID" VisibleIndex="1" Caption="Collection ID">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="InvNo" VisibleIndex="1" Visible="false">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Inv" VisibleIndex="2" Visible="false">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="InvThn" VisibleIndex="3" Visible="false">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CollectionDate" VisibleIndex="4" Caption="Collection Date">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Currency" VisibleIndex="5" >
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Rate" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CollAmtIDR" VisibleIndex="7" Caption="Collection Amount (IDR)" PropertiesTextEdit-DisplayFormatString="N">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CollAmtFRG" VisibleIndex="8" Caption="Collection Amount (FRG)" PropertiesTextEdit-DisplayFormatString="N">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:ObjectDataSource ID="odsCollection" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByInvNo" TypeName="Berca.DataSet.dsBercaTableAdapters.CollectionTableAdapter">
                <SelectParameters>
                    <asp:Parameter Name="InvNo" Type="String" DefaultValue="INV" />
                    <asp:Parameter Name="Inv" Type="String" DefaultValue="INV" />
                    <asp:Parameter Name="InvThn" Type="String" DefaultValue="INV" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
