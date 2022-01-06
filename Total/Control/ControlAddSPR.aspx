<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlAddSPR.aspx.cs" Inherits="Berca.Control.ControlAddInvo" %>
<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html>
<script type="text/javascript">
    function NumberOnly() {
        var AsciiValue = event.keyCode
        if ((AsciiValue >= 48 && AsciiValue <= 57) || (AsciiValue == 8 || AsciiValue == 127))
            event.returnValue = true;
        else
            event.returnValue = false;
    }
    function closeWindow() {
        window.close();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" align ="center">
            <dx:ASPxRoundPanel ID="panel" runat="server" Width="150px" HeaderText="Add SPR" ShowHeader="true">
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server">
                        <div class="value label">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="auto-style1">
                                            <div class="name2" style="width: 120px" >
                                                Nama Peminta 
                                            </div>
                                        </td>
                                        <td class="auto-style1">
                                        </td>
                                        <td class="auto-style1">
                                            <dx:ASPxTextBox ID="txtPeminta" runat="server" Width="170px"></dx:ASPxTextBox>
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
                                            <dx:ASPxTextBox ID="txtLksPryk" runat="server" Width="170px" ></dx:ASPxTextBox>
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
                                            <dx:ASPxTextBox ID="txtLksPmnt" runat="server" Width="170px" ></dx:ASPxTextBox>
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
                                                Tanggal SPR
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxDateEdit ID="deSPR" runat="server" Width="170px" Enabled="false" Font-Bold="True" 
                                                PropertiesDateEdit-DisplayFormatString="dd-MMM-yyyy">
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
                        <div class="row">
                            <div style="width: 325px" align="center">
                                <dx:ASPxButton ID="btnSubmit" runat="server" Text="Submit" AutoPostBack="False" OnClick="btnSubmit_Click">
                                </dx:ASPxButton>
                            </div>
                            <div class="end">
                            </div>
                            <div class="end">
                            </div>
                        </div>
                        <div class="row">
                            <div style="width: 325px" align="center">
                                <dx:ASPxLabel ID="Lbl_Close" runat="server" Text="DATA BERHASIL DI INPUT" Visible="false" Font-Bold="True" Font-Size="12pt"></dx:ASPxLabel>
                            </div>
                            <div class="end">
                            </div>
                        </div>
                        <div class="row">
                            <div style="width: 325px" align="center">
                                <dx:ASPxButton ID="btnClose" runat="server" Text="Close" AutoPostBack="False" OnClick="btnClose_Click" Visible="false">
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
