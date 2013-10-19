<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminRedigerNyhed.aspx.cs" Inherits="admin_adminRedigerNyhed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>

        <tr>
            <td>
                <label>Overskrift</label></td>
            <td>
                <label>Manchet-tekst</label></td>
            <td>
                <label>Tekst</label></td>
            <td>
                <label>Forfatter</label></td>
            <td>
                <label>Billede navn (eks. NAVN.jpg)</label></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="redigerOverskrift" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="redigerManchet" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="redigerTekst" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="redigerForfatter" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="redigerImg" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td colspan="5">
                <asp:Button ID="redigerButton" runat="server" Text="Gem" OnClick="redigerButton_Click"  /></td>
        </tr>
        
        <tr>
            <td colspan="7">
                <a href="AdminNyheder.aspx">Tilbage til nyhedsoversigten</a></td>
        </tr>

        <tr>
            <td colspan="5">
                <asp:Label ID="nyhedRedigeretBesked" runat="server" Text=""></asp:Label></td>
        </tr>

    </table>

</asp:Content>

