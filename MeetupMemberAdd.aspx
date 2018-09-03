<%@ Page Title="Add a meetup member" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeetupMemberAdd.aspx.cs" Inherits="RaffelApp.MeetupMemberAdd" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Add a member</h1>
    <center>
             <table border="1" CellPadding="5px">
             <tr>
                 <td>Name</td>
                 <td><asp:TextBox ID="txtName" runat="server"/></td>
             </tr>
             <tr>
                 <td>Company Name</td>
                 <td><asp:TextBox ID="txtCompanyName" runat="server"/></td>
             </tr>
             <tr>
                 <td>Email Address</td>
                 <td><asp:TextBox ID="txtEmail" runat="server"/></td>
             </tr>
             <tr>
                 <td>Azure Pass Received</td>
                 <td><asp:CheckBox id="chkAzurePassReceived" runat="server"/></td>
             </tr>
             <tr>
                 <td>Registered for Raffel</td>
                 <td><asp:CheckBox id="chkRegisteredForRaffel" runat="server"/></td>
             </tr>
              <tr>
                 <td colspan="2" align="center">
                     <asp:Button id="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click"/>
                     <asp:Button id="btnCancel" Text="Cancel" runat="server"/>
                 </td>
             </tr>
            </table>
            <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
    </center>
</asp:Content>
