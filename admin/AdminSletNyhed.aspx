<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSletNyhed.aspx.cs" Inherits="admin_AdminSletNyhed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>

        <tr>
            <td>
                <label>Nyheds-ID</label></td>
            <td>
                <label>Overskrift</label></td>
            <td>
                <label>Manchet-tekst</label></td>
            <td>
                <label>Tekst</label></td>
            <td>
                <label>Forfatter</label></td>
            <td>
                <label>Billed navn (eks. NAVN.jpg)</label></td>
            <td>
                <label>Oprettelses-dato</label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="sletID" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletOverskrift" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletManchet" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletTekst" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletForfatter" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletImg" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="sletOprettetDen" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td colspan="7">
                <asp:Button ID="sletButton" runat="server" Text="Slet nyheden" OnClick="sletButton_Click"  /></td>
        </tr>
        
        <tr>
            <td colspan="7">
                <a href="AdminNyheder.aspx">Tilbage til nyhedsoversigten</a></td>
        </tr>

        <tr>
            <td colspan="7">
                <asp:Label ID="nyhedSletNyhed" runat="server" Text=""></asp:Label></td>
        </tr>
        
        
    </table>
</asp:Content>

