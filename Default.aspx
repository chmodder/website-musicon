<%@ Page Title="Musicon | Forside" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">

    <asp:SqlDataSource ID="SqlDataSourceTopEvent" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [events] ORDER BY [eventDato] DESC"></asp:SqlDataSource>

    <asp:Repeater ID="RepeaterTopEvent" runat="server" DataSourceID="SqlDataSourceTopEvent">
        <ItemTemplate>
            <%--Kommentar fjernes i nedenstående link, hvis variablen skal bruges--%>
        <a href="Kalender.aspx<%--?eventId=<%# Eval ("Id") %>--%>" id="forsideNextEvent" class="smallBox height160">
            <h4 id="eventDatoDag"><%# Eval ("eventDato", "{0:dd}") %></h4>
            <br />
            <h4 id="eventDatoMaaned"><%# Eval ("eventDato", "{0:MMMM}") %></h4>
        </a>
        <!--smallBox height160-->
</ItemTemplate>
    </asp:Repeater>

    <a href="Kaffecyklen.aspx" id="forsideKaffecyklen" class="wideBox height160"></a>
    <!--forsideKaffecyklen-wideBox height160-->

    <asp:SqlDataSource ID="SqlDataSourceAlleNyheder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 2 * FROM [nyheder] ORDER BY [oprettetDen] DESC"></asp:SqlDataSource>

    <asp:Repeater ID="RepeaterNyheder" runat="server" DataSourceID="SqlDataSourceAlleNyheder">

        <ItemTemplate>
            <div class="smallBox height160">
                <img src="img/nyheder_250_160/<%# Eval("img") %>" />
            </div>
            <!--smallBox height160-->

            <div class="wideBox height160">
                <h2 class="h2Manchet"><%# Eval("overskrift") %></h2>
                <p class="pManchet"><%# Eval ("manchet") %></p>
                <a id="readMore" href="visNyhed.aspx?nyhedsId=<%# Eval ("Id") %>">Læs artiklen</a>
            </div>
            <!--wideBox height160-->
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
