<%@ Page Language="C#" MasterPageFile="~/Admin/Quantri_web.master" AutoEventWireup="true" CodeFile="Timkiem.aspx.cs" Inherits="Admin_Timkiem" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"
        Text="Các tin bài trong ngày:"></asp:Label>&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
        DataTextField="Creatdate" DataValueField="Creatdate" Width="136px">
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT DISTINCT [Creatdate] FROM [Tb_DetailNews] ORDER BY [Creatdate] DESC">
    </asp:SqlDataSource>
    <hr />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource2"
        Width="98%">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="left" colspan="2" width="98%">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#0066FF"
                                NavigateUrl='<%# "Chitiet_Timkiem.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'
                                Text='<%# Eval("Title_News") %>'></asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="text-align: center" align="center" width="40%">
                            <asp:Image ID="Image2" runat="server" Height="85px" ImageUrl='<%# "~/Pictures/"+Eval("Picture") %>'
                                Width="85px" /></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="ShortcutLabel" runat="server" Text='<%# Eval("Shortcut") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td align="right" width="58%">
                            <asp:Label ID="CreatdateLabel" runat="server" Font-Italic="True" ForeColor="#0099CC"
                                Text='<%# Eval("Creatdate") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td align="right" width="58%">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Chi_tiet.gif" />&nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True"
                                ForeColor="#FF0033" NavigateUrl='<%# "Chitiet_Timkiem.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'>Chi tiết</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Creatdate] = @Creatdate)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Creatdate" PropertyName="SelectedValue"
                Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

