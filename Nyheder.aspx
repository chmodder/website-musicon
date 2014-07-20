<%@ Page Title="Musicon | Nyheder" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Nyheder.aspx.cs" Inherits="Nyheder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">

    <asp:SqlDataSource ID="SqlDataSourceAlleNyheder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [musicon].[nyheder] ORDER BY [oprettetDen] DESC"></asp:SqlDataSource>

    <asp:Repeater ID="RepeaterNyheder" runat="server" DataSourceID="SqlDataSourceAlleNyheder">

        <ItemTemplate>
            <div class="smallBox height160">
                <img src="img/nyheder_250_160/<%# Eval("img") %>" />
            </div>
            <!--smallBox height160-->

            <div class="wideBox height160">
                    <h2 class="h2NyhedManchet"><%# Eval("overskrift") %></h2>
                    <h2 class="dato">Oprettet den <%# Eval ("oprettetDen") %></h2>
                    <p class="pManchet"><%# Eval ("manchet") %></p>
                <a id="readMore" href="visNyhed.aspx?nyhedsId=<%# Eval ("Id") %>">Læs artiklen</a>
            </div>
            <!--wideBox height160-->
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

