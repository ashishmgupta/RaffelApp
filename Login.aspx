<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RaffelApp.Login" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login</h1>
    <br />
    <center>
    <table border="1" CellPadding="5px" >  
                <tr>  
                    <td> UserName:</td>  
                    <td>  
                        <asp:TextBox ID="UserName" runat="server" />  
                    </td>  
                    
                </tr>  
                <tr>  
                    <td>Password:</td>  
                    <td>  
                        <asp:TextBox ID="UserPass" TextMode="Password"   
             runat="server" />  
                    </td>  
                    
                </tr>  
               <%-- <tr>  
                    <td colspan="3">  
                        <asp:CheckBox ID="chkboxPersist" runat="server" /> Remember me?
                    </td>  
                </tr> --%>
            <tr>
                <td colspan="2" align="center">
                <asp:Button ID="Submit1" OnClick="Login_Click" Text="Log In" runat="server" />  
                </td>

            </tr>
            </table>  
            <asp:Label ID="Msg" ForeColor="red" runat="server" /> 
            <p>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"   
                ControlToValidate="UserPass"  
                ErrorMessage="Cannot be empty."   
                runat="server" />  

            </p>  
            <p> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"   
                ControlToValidate="UserName"  
                Display="Dynamic"   
                ErrorMessage="Cannot be empty."   
                runat="server" /> 
            </p> 
        </center>
</asp:Content>
