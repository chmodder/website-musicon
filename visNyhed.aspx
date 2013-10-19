<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="visNyhed.aspx.cs" Inherits="visNyhed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">

    <asp:SqlDataSource ID="SqlDataSourceHej" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [nyheder] WHERE ([Id] = @knud)">
        <SelectParameters>
            <asp:QueryStringParameter Name="knud" DefaultValue="1" QueryStringField="nyhedsId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceHej">

        <ItemTemplate>
            <div class="smallBox height160">
                <img src="img/nyheder_250_160/<%# Eval("img") %>" />
            </div>
            <!--smallBox height160-->

            <div class="wideBox" id="minHeight160">
                <h2 class="h2NyhedManchet"><%# Eval("overskrift") %></h2>
                <h2 class="dato">Oprettet den <%# Eval ("oprettetDen") %></h2>
                <p class="pManchet"><%# Eval ("manchet") %></p>
                <p class="brodtekst"><%# Eval ("tekst") %></p>
                <p><span class="forfatter">Forfatter: </span><%# Eval ("forfatter") %></p>
            </div>
            <!--wideBox height160-->

        </ItemTemplate>

    </asp:Repeater>

</asp:Content>

