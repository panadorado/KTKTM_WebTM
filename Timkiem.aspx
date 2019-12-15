<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true" CodeFile="Timkiem.aspx.cs" Inherits="Timkiem" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Các tin bài trong ngày: " Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
        DataTextField="Creatdate" DataValueField="Creatdate">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT DISTINCT [Creatdate] FROM [Tb_DetailNews] ORDER BY [Creatdate] DESC">
    </asp:SqlDataSource>
    <hr />
    &nbsp; &nbsp; &nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID"
        DataSourceID="SqlDataSource2" Width="98%">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" style="text-align: left" width="98%">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="#0066FF"
                                NavigateUrl='<%# "ChitietTimkiem.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'
                                Text='<%# Eval("Title_News") %>'></asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="text-align: center" width="40%">
                            <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# "Pictures/"+Eval("Picture") %>'
                                Width="80px" /></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="ShortcutLabel" runat="server" Text='<%# Eval("Shortcut") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:Label ID="CreatdateLabel" runat="server" Text='<%# Eval("Creatdate") %>' Font-Italic="True" ForeColor="#0099CC"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 22px;">
                        </td>
                        <td style="text-align: right; height: 22px;" width="58%">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/Chi_tiet.gif" />&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True"
                                ForeColor="Red" NavigateUrl='<%# "ChitietTimkiem.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'>Chi tiết</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
            <hr />
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Creatdate] = @Creatdate)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Creatdate" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>

