<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RaffelWinner.aspx.cs" Inherits="RaffelApp.RaffelWinner" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Raffel winner</h1>
    <center>
        <asp:Button ID="Button1" runat="server" Text="I am feeling lucky!!" OnClick="Button1_Click" />
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <asp:Label Font-Size="XX-Large" ID="lblRaffelWinner" runat="server"></asp:Label>
    </center>
</asp:Content>
