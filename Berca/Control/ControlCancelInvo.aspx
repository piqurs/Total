<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlCancelInvo.aspx.cs" Inherits="Berca.Control.ControlDeleteInvo" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" align="center">
            <dx:ASPxRoundPanel ID="panel" runat="server" Width="550px" HeaderText="Cancel Invoice Confirmation" ShowHeader="true" Visible="true">
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server">
                        <div class="value label">
                            <div class="row" align="center">
                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Are You Sure Want To Cancel This Invoice?" Font-Bold="true" Font-Size="Medium">
                                </dx:ASPxLabel>
                            </div>
                            <div class="row" align="center">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <div class="name2" style="width: 120px" >
                                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="No. Invoice" Font-Bold="true" Font-Size="Medium">
                                                </dx:ASPxLabel>
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtInvNo" runat="server" Width="170px" Text="" Enabled="false" Font-Bold="True" ForeColor="#0066FF"></dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <br />
                        </div>
                        <div class="row" align="center">
                            <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <dx:ASPxButton ID="btnYes" runat="server" Text="Yes" Font-Size="Medium" OnClick="btnYes_Click"></dx:ASPxButton>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <dx:ASPxButton ID="btnNo" runat="server" Text="No" Font-Size="Medium" OnClick="btnNo_Click"></dx:ASPxButton>
                                        </td>
                                    </tr>
                                </table>
                        </div>
                        <div class="row" align="center">
                                <dx:ASPxLabel ID="lblNotif" runat="server" Text="Invoice Has Been Cancelled!!!" Font-Bold="true" Font-Size="Medium" ForeColor="#ff3300" Visible="false">
                                </dx:ASPxLabel>
                            <dx:ASPxButton ID="btnReturn" runat="server" Text="Return" Font-Size="Medium" OnClick="btnReturn_Click" Visible="false"></dx:ASPxButton>
                        </div>
                    </dx:PanelContent>

                </PanelCollection>
            </dx:ASPxRoundPanel>
        </div>
    </form>
</body>
</html>
