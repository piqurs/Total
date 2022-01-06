<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlViewSPR.aspx.cs" Inherits="Berca.Control.ControlViewSPR" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" align ="center">
            <dx:ASPxRoundPanel ID="panel" runat="server" Width="150px" ShowHeader="true" HeaderText="Detail SPR">
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server">
                        <div class="value label">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="auto-style1">
                                            <div class="name2" style="width: 120px" >
                                                Nomor SPR
                                            </div>
                                        </td>
                                        <td class="auto-style1">
                                        </td>
                                        <td class="auto-style1">
                                            <dx:ASPxTextBox ID="txtNoSPR" runat="server" Width="170px" Enabled="false"></dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <div class="name2" style="width: 120px" >
                                                Status SPR
                                            </div>
                                        </td>
                                        <td class="auto-style1">
                                        </td>
                                        <td class="auto-style1">
                                            <dx:ASPxComboBox ID="cbStatus" runat="server" ValueType="System.Int32">
                                                <Items>
                                                    <dx:ListEditItem Text="Disetujui" Value="1" />
                                                    <dx:ListEditItem Text="Belum Disetujui" Value="0" />
                                                </Items>
                                            </dx:ASPxComboBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <div class="name2" style="width: 120px" >
                                                Nama Peminta 
                                            </div>
                                        </td>
                                        <td>
                                            <br />
                                        </td>
                                        <td class="auto-style1">
                                            <dx:ASPxTextBox ID="txtPeminta" runat="server" Width="170px" Enabled="false"></dx:ASPxTextBox>
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
                                                Lokasi Proyek
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtLksPryk" runat="server" Width="170px" Enabled="false"></dx:ASPxTextBox>
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
                                                Lokasi Peminta
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtLksPmnt" runat="server" Width="170px" Enabled="false"></dx:ASPxTextBox>
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
                                                Tanggal Minta SPR
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxDateEdit ID="deMintaSPR" runat="server" Width="170px" Enabled="false" DisplayFormatString="dd-MMM-yyyy"
                                                EditFormatString="dd-MMM-yyyy">
                                            </dx:ASPxDateEdit>
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
                                                Tanggal Diterima SPR
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxDateEdit ID="deSPR" runat="server" Width="170px" DisplayFormatString="dd-MMM-yyyy"
                                                EditFormatString="dd-MMM-yyyy">
                                            </dx:ASPxDateEdit>
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
                                                Jenis Material
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxComboBox ID="cbMtrl" runat="server" ValueType="System.String" DataSourceID="SqlMtrl"
                                                TextFormatString="{0}; {1}" ClientInstanceName="cbMtrl" ValueField="id">
                                                <Columns>
                                                    <dx:ListBoxColumn Caption="Nama Material" FieldName="Material">
                                                    </dx:ListBoxColumn>
                                                    <dx:ListBoxColumn Caption="Tipe Material" FieldName="Tipe_Material">
                                                    </dx:ListBoxColumn>
                                                </Columns>
                                            </dx:ASPxComboBox>
                                            <asp:SqlDataSource ID="SqlMtrl" runat="server" ConnectionString="<%$ ConnectionStrings:TotalConnectionString %>" 
                                                SelectCommand="Get_All_Mtrl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        <br />
                        <br />
                        <div class="row" style="width: 325px" align="center">
                                <table cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 150px" >
                                                <dx:ASPxButton ID="btn_Upd" runat="server" Text="Update" OnClick="btn_Upd_Click"></dx:ASPxButton>
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <div class="name2">
                                                <dx:ASPxButton ID="btn_Del" runat="server" Text="Delete" OnClick="btn_Del_Click"></dx:ASPxButton>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                        </div>
                        <br />
                        <br />
                        <div class="row">
                            <div style="width: 325px" align="center">
                                <dx:ASPxLabel ID="Lbl_Close" runat="server" Text="" Visible="false" Font-Bold="True" Font-Size="12pt"></dx:ASPxLabel>
                            </div>
                            <div class="end">
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div style="width: 325px" align="center">
                                <dx:ASPxButton ID="btnClose" runat="server" Text="Close" AutoPostBack="False" OnClick="btnClose_Click" Visible="true">
                                </dx:ASPxButton>
                            </div>
                            <div class="end">
                            </div>
                        </div>
                    </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
        </div>
    </form>
</body>
</html>
