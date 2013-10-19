<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSletBesked.aspx.cs" Inherits="admin_AdminSletBesked" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>

        <tr>
            <td>
                <label>Besked-ID</label></td>
            <td>
                <label>Fornavn</label></td>
            <td>
                <label>Efternavn</label></td>
            <td>
                <label>Email</label></td>
            <td>
                <label>Emne</label></td>
            <td>
                <label>Besked</label></td>
            <td>
                <label>Oprettelses-dato</label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="sletID" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletFornavn" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletEfternavn" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletEmail" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletEmne" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletBesked" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletOprettetDen" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td colspan="7">
                <asp:Button ID="sletButton" runat="server" Text="Slet beskeden" OnClick="sletButton_Click"  /></td>
        </tr>
        
        <tr>
            <td colspan="7">
                <a href="AdminBeskeder.aspx">Tilbage til beskedoversigten</a></td>
        </tr>

        <tr>
            <td colspan="7">
                <asp:Label ID="beskederSletBesked" runat="server" Text=""></asp:Label></td>
        </tr>

        </table>

</asp:Content>

