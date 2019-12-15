<%@ Page Language="C#" MasterPageFile="~/Users/Trangchu.master" AutoEventWireup="true" CodeFile="ChitietTimkiem.aspx.cs" Inherits="ChitietTimkiem" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000FF"
        Text="Bản tin chi tiết."></asp:Label><br />
    <hr />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource1"
        Width="98%">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="left" colspan="2" width="98%">
                            <asp:Label ID="Title_NewsLabel" runat="server" Font-Bold="True" ForeColor="#0033CC"
                                Text='<%# Eval("Title_News") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: center;">
                            <asp:Image ID="Image2" runat="server" Height="80px" ImageUrl='<%# "~/Pictures/"+Eval("Picture") %>'
                                Width="80px" /></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="ShortcutLabel" runat="server" Font-Italic="True" Text='<%# Eval("Shortcut") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: justify" width="98%">
                            <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:Label ID="CreatdateLabel" runat="server" Font-Italic="True" ForeColor="#0099CC"
                                Text='<%# Eval("Creatdate") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True"
                                ForeColor="#FF0000" NavigateUrl='<%# "Timkiem.aspx?Group_ID="+Eval("Group_ID") %>'><< Quay lại</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE (([Group_ID] = @Group_ID) AND ([New_ID] = @New_ID))">
        <SelectParameters>
            <asp:QueryStringParameter Name="Group_ID" QueryStringField="Group_ID" Type="Int32" />
            <asp:QueryStringParameter Name="New_ID" QueryStringField="New_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"
        Text="Các tin bài liên quan"></asp:Label><br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="New_ID" DataSourceID="SqlTinlienquan"
        Width="98%">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: left" width="100%">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Chi_tiet.gif" />&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'
                                Text='<%# Eval("Title_News") %>'></asp:HyperLink></td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlTinlienquan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Group_ID] = @Group_ID) ORDER BY [Creatdate] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="Group_ID" QueryStringField="Group_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

