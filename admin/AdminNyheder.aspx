<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminNyheder.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:SqlDataSource ID="SqlDataSourceAdminNyheder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [musicon].[nyheder] ORDER BY [oprettetDen] DESC"></asp:SqlDataSource>


    <a href="Default.aspx">Administrator Forside</a>
    <br />
    <a href="AdminOpretNyhed.aspx">Opret Nyhed</a>
    <table>
        <tr>
            <td>Id</td>
            <td>overskrift</td>
            <td>manchet</td>
            <td>forfatter</td>
            <td>oprettet den</td>
            <td>Sidst ændret den</td>
        </tr>
        <asp:Repeater ID="AdminAlleNyheder" runat="server" DataSourceID="SqlDataSourceAdminNyheder">
            <ItemTemplate>

                <tr>
                    <td><%# Eval ("Id") %></td>
                    <td><%# Eval ("overskrift") %></td>
                    <td><%# Eval ("manchet") %></td>
                    <td><%# Eval ("forfatter") %></td>
                    <td><%# Eval ("oprettetDen") %></td>
                    <td><%# Eval ("lastChanged") %></td>
                    <td><a href="AdminRedigerNyhed.aspx?nyhedsId=<%# Eval ("Id") %>">Rediger Nyhed</a></td>
                    <td><a href="AdminSletNyhed.aspx?nyhedsId=<%# Eval ("Id") %>">Slet Nyhed</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

