<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlAddInvo.aspx.cs" Inherits="Berca.Control.ControlAddInvo" %>
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
            <dx:ASPxRoundPanel ID="panel" runat="server" Width="150px" HeaderText="Add Invoice" ShowHeader="true">
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server">
                        <div class="value label">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="auto-style1">
                                            <div class="name2" style="width: 120px" >
                                                Nama Customer 
                                            </div>
                                        </td>
                                        <td class="auto-style1">
                                        </td>
                                        <td class="auto-style1">
                                            <dx:ASPxComboBox ID="cbCustomer" runat="server" ValueType="System.String" ClientInstanceName="cbCustomer"
                                                DataSourceID="odsCustomer" ValueField="CUSTOMERID" TextFormatString="{0}; {1}">
                                                <ClientSideEvents BeginCallback="function(s, e) {
	txtTop.PerformCallBack();
}" />
                                                <Columns>
                                                    <dx:ListBoxColumn Caption="Nama Customer" FieldName="CUSTOMERNAME">
                                                    </dx:ListBoxColumn>
                                                    <dx:ListBoxColumn Caption="ID Customer" FieldName="CUSTOMERID">
                                                    </dx:ListBoxColumn>
                                                </Columns>
                                            </dx:ASPxComboBox>
                                            <asp:ObjectDataSource ID="odsCustomer" runat="server"  OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Berca.DataSet.dsBercaTableAdapters.CustomerTableAdapter">
                                            </asp:ObjectDataSource>
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
                                                No. Invoice 
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtInvNo" runat="server" Width="170px" Text="" Enabled="false" Font-Bold="True" ForeColor="#0066FF"></dx:ASPxTextBox>
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
                                                Tanggal Invoice
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtInvDate" runat="server" Width="170px" Text="" Enabled="false" Font-Bold="True" ForeColor="#0066FF"></dx:ASPxTextBox>
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
                                                Currency - Rate
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxComboBox ID="cbCurr" runat="server" ValueType="System.String" DataSourceID="odsCurr"
                                                TextFormatString="{0}; {1}" ClientInstanceName="cbCurr" ValueField="CURRENCY">
                                                <Columns>
                                                    <dx:ListBoxColumn Caption="Currency" FieldName="CURRENCY">
                                                    </dx:ListBoxColumn>
                                                    <dx:ListBoxColumn Caption="Rate" FieldName="RATE">
                                                    </dx:ListBoxColumn>
                                                </Columns>
                                            </dx:ASPxComboBox>
                                            <asp:ObjectDataSource ID="odsCurr" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                                                TypeName="Berca.DataSet.dsBercaTableAdapters.CurrencyTableAdapter" >
                                            </asp:ObjectDataSource>
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
                                                Nilai Invoice 
                                            </div>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <dx:ASPxTextBox ID="txtInvAmt" runat="server" Width="170px" Text="" DisplayFormatString="N" ClientInstanceName="txtInvAmt" onkeypress="return NumberOnly()">
                                            </dx:ASPxTextBox>
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
                        </div>
                        <div class="row" align="center">
                            <dx:ASPxLabel ID="lblNotif" runat="server" Text="Invoice Has Been Added!!!" Font-Bold="true" Font-Size="Medium" ForeColor="#3366ff" Visible="false">
                            </dx:ASPxLabel>
                        </div>
                        <div class="row" align="center">
                            <asp:ImageButton ID="imgBtnClose" OnClientClick="return closeWindow()" runat="server" ImageUrl="~/CSS/cancel.png" ToolTip="Close" Visible="false"/>
                        </div>
                    </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
    </form>
</body>
</html>
