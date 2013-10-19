<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminOpretNyhed.aspx.cs" Inherits="admin_adminOpretNyhed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
                <asp:TextBox ID="opretOverskrift" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="opretManchet" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="opretTekst" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="opretForfatter" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="opretImg" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td colspan="5">
                <asp:Button ID="sendButton" runat="server" Text="Send" OnClick="sendButton_Click" /></td>
        </tr>

        <tr>
            <td colspan="5">
                <asp:Label ID="nyhedOprettetBesked" runat="server" Text=""></asp:Label></td>
        </tr>

    </table>

</asp:Content>

