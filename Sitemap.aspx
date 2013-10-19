<%@ Page Title="Musicon | Sitemap" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs" Inherits="Sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">

    <div class="smallBox height160">
        <img src="img/nyheder_250_160/colorboxes.jpg" />
    </div><!--smallBox height160-->
    
    <div id="sitemapBox">
            <h2 class="h2Manchet">Sitemap</h2>
            <ul id="sitemap">
                <li><a href="Default.aspx">Forside</a></li>
                <li class="dash"><a href="Nyheder.aspx">Nyheder</a></li>
                <li class="dash"><a href="Kalender.aspx">Kalender</a></li>
                <li class="dash"><a href="Kaffecyklen.aspx">Kaffecyklen</a></li>
                <li class="dash"><a href="Kontakt.aspx">Om/Kontakt</a></li>
                <li class="dash"><a href="Sitemap.aspx">Sitemap</a></li>
            </ul>
    </div><!--sitemapBox-->

    <div class="smallBox height160">
        <img src="img/nyheder_250_160/palme.jpg" />
    </div><!--smallBox height160-->
    
    <div class="smallBox height160">
        <img src="img/nyheder_250_160/skate.jpg" />
    </div><!--smallBox height160-->

</asp:Content>

