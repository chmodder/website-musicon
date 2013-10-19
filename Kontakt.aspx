<%@ Page Title="Musicon | Om os/Kontakt" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kontakt.aspx.cs" Inherits="kontakt" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">

    <div class="smallBox height160">
        <img src="img/nyheder_250_160/colorboxes.jpg" />
    </div>
    <!--smallBox height160-->

    <div class="wideBox height160">
        <h2 class="h2Manchet">Om os</h2>
        <p class="brodtekst2">Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.</p>
    </div>
    <!--wideBox height160-->

    <div id="adresseBox">
        <h2 class="h2RedBg">Adressen</h2>
        <h3>Musicon Magasinet</h3>
        <ul>
            <li>Lalavej 12</li>
            <li>4000 Roskilde</li>
        </ul>
        <ul>
            <li>Telefon: 12345678</li>
        </ul>
    </div>
    <!--wideBox-->

    <div id="kontaktBox">
        <h2 class="h2RedBg">Skriv til os</h2>

        <label>Fornavn:</label>
        <asp:TextBox ID="fornavn" required="required" TextMode="SingleLine" runat="server"></asp:TextBox>
        <br />
        <label>Efternavn:</label>
        <asp:TextBox ID="efternavn" required="required" TextMode="SingleLine" runat="server"></asp:TextBox>
        <br />
        <label>Email:</label>
        <asp:TextBox ID="email" required="required" TextMode="Email" runat="server"></asp:TextBox>
        <br />
        <label>Emne:</label>
        <asp:TextBox ID="emne" required="required" TextMode="SingleLine" runat="server"></asp:TextBox>
        <br />
        <label>Besked:</label>
        <asp:TextBox ID="besked" runat="server" required="required" TextMode="MultiLine" Rows="5"></asp:TextBox>
        <asp:Button ID="send" runat="server" Text="Send" OnClick="send_Click"/>

        <asp:Label ID="Label_besked" runat="server" Text=""></asp:Label>

    </div>
    <!--wideBox-->
</asp:Content>
