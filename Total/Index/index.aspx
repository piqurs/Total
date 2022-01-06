<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Berca.Index.index" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<script type="text/javascript">

    function openPopup() {

        window.open("/Control/ControlAddSPR.aspx", "_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");

    }
    function openView() {

        window.open("/Control/ControlViewSPR.aspx", "_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");

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
                                                Kode SPR 
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtKodeSPR" runat="server" Width="200px" NullText="0001-1283-12-2021">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        <br />
                        <br />
                        <div class="row">
                            <div style="width: 325px" align="center">
                                <dx:ASPxButton ID="btnRetrieve" runat="server" Text="Retrieve" AutoPostBack="False" >
                                    <ClientSideEvents Click="function(s, e) {
	gvSPR.PerformCallback();
}"></ClientSideEvents>
                                </dx:ASPxButton>
                            <div class="end">
                            </div>
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
        <dx:ASPxGridView ID="gvSPR" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvSPR" KeyFieldName="KodeSPR" 
            OnCustomCallback="gvSPR_CustomCallback" DataSourceID="SqlDataSource2" OnCustomColumnDisplayText="gvSPR_CustomColumnDisplayText">
<SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" AllowSelectSingleRowOnly="true" />
<SettingsPopup>
<FilterControl AutoUpdatePosition="False"></FilterControl>
</SettingsPopup>
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:GridViewDataTextColumn Caption="No" FieldName="NO" UnboundType="Integer" VisibleIndex="0">
                    <Settings AllowAutoFilter="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tool" FieldName="BUTTON" VisibleIndex="0" UnboundType="String" Width="30px">
                     <DataItemTemplate>
                         <dx:ASPxButton ID="btnViewInv" runat="server" Text="" OnClick="btnViewInv_Click" Image-Url="~/CSS/view.png" ToolTip="View SPR"
                             Image-Height="20px" Image-Width="20px"></dx:ASPxButton>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Kode SPR" FieldName="KodeSPR" VisibleIndex="0" ReadOnly="True">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="idref" VisibleIndex="1" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="proyekkd" VisibleIndex="2" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="proyekbl" VisibleIndex="3" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="proyekth" VisibleIndex="4" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Peminta" FieldName="peminta" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="Tanggal Minta" FieldName="TanggalMinta" VisibleIndex="6" PropertiesDateEdit-DisplayFormatString="dd-MMM-yyyy">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="LokasiPeminta" VisibleIndex="7" Caption="Lokasi Peminta" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LokasiProyek" VisibleIndex="8" Caption="Lokasi Proyek" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="9" Caption="Status Proyek">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Material" VisibleIndex="10" Caption="Material" Visible="false">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TipeMaterial" VisibleIndex="11" Caption="Tipe Material" Visible="false">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TotalConnectionString %>" SelectCommand="SelectSPR" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="%%" Name="SPR" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
        <div class="end">
                <br />
            </div>
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ASPxButton" OnClick="ASPxButton1_Click"></dx:ASPxButton>
        <div class="end">
                <br />
            </div>
        <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" DataSourceID="SqlMtrl">
            <Columns>
                <dx:ListBoxColumn Caption="Nama Material" FieldName="Material">

                </dx:ListBoxColumn>
                <dx:ListBoxColumn Caption="Tipe Material" FieldName="Tipe_Material">

                </dx:ListBoxColumn>
            </Columns>
        </dx:ASPxComboBox>
        <asp:SqlDataSource ID="SqlMtrl" runat="server" ConnectionString="<%$ ConnectionStrings:TotalConnectionString %>" SelectCommand="Get_All_Mtrl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
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