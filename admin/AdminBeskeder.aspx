<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminBeskeder.aspx.cs" Inherits="admin_AdminBeskeder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:SqlDataSource ID="SqlDataSourceAdminNyheder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [musicon].[beskeder] ORDER BY [oprettetDen] DESC"></asp:SqlDataSource>


    <a href="Default.aspx">Administrator Forside</a>
    <br />

    <table>
        <tr>
            <td>Id</td>
            <td>Fornavn</td>
            <td>Efternavn</td>
            <td>Email</td>
            <td>Emne</td>
            <td>Besked</td>
        </tr>
        <asp:Repeater ID="AdminAlleNyheder" runat="server" DataSourceID="SqlDataSourceAdminNyheder">
            <ItemTemplate>

                <tr>
                    <td><%# Eval ("Id") %></td>
                    <td><%# Eval ("fornavn") %></td>
                    <td><%# Eval ("efternavn") %></td>
                    <td><%# Eval ("email") %></td>
                    <td><%# Eval ("emne") %></td>
                    <td><%# Eval ("besked") %></td>

                    <td><a href="AdminSletBesked.aspx?beskedId=<%# Eval ("Id") %>">Slet Besked</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>

