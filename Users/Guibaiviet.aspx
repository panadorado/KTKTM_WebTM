<%@ Page Language="C#" MasterPageFile="~/Users/Trangchu.master" AutoEventWireup="true" CodeFile="Guibaiviet.aspx.cs" Inherits="Users_Guibaiviet" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td colspan="3" style="background-color: #99ccff">
                    <strong><span style="font-size: 13pt; color: #0000ff">Gửi bài viết: </span></strong>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 25px">
                </td>
            </tr>
            <tr>
                <td align="right" style="font-weight: bold; color: #0066cc" width="38%">
                    Tiêu đề:</td>
                <td style="width: 4px">
                </td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="TxtTieude" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="font-weight: bold; color: #0066cc" width="38%">
                    Nội dung chính:</td>
                <td style="width: 4px; height: 30px">
                </td>
                <td align="left" style="width: 100px; height: 30px">
                    <asp:TextBox ID="TxtNDChinh" runat="server" Height="54px" TextMode="MultiLine" Width="219px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="font-weight: bold; color: #0066cc" width="38%">
                    Nội dung:</td>
                <td style="width: 4px; height: 68px">
                </td>
                <td align="left" style="height: 68px" width="60%">
                    <asp:TextBox ID="TxtNoidung" runat="server" Height="60px" TextMode="MultiLine" Width="219px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" colspan="3" style="height: 25px">
                </td>
            </tr>
        </table>
    </div>
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td style="width: 48%; text-align: right">
                    <asp:Button ID="CmdGui" runat="server" Text="Gửi" OnClick="CmdGui_Click" Width="73px" BackColor="#C0C0FF" Font-Bold="True" /></td>
                <td style="width: 100px">
                    </td>
                <td style="width: 48%; text-align: left">
                    <asp:Button ID="CmdThoat" runat="server" Text="Thoát" OnClick="CmdThoat_Click" Width="64px" BackColor="#C0C0FF" Font-Bold="True" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

