<%@ Page Title="Meetup members" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeetupMembers.aspx.cs" Inherits="RaffelApp.MeetupMembers" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Members List</h1>
    <asp:GridView GridLines="Horizontal"  ID="GridView1" runat="server" PageSize ="550" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="ID" ForeColor="Black" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
        <asp:CheckBoxField DataField="AzurePassReceived" HeaderText="AzurePassReceived" SortExpression="AzurePassReceived" />
        <asp:BoundField DataField="MemberProfileURL" HeaderText="MemberProfileURL" SortExpression="MemberProfileURL" />
        <asp:CheckBoxField DataField="RegisteredForRaffel" HeaderText="RegisteredForRaffel" SortExpression="RegisteredForRaffel" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
    </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:meetupConnectionString %>" SelectCommand="SELECT [Name], [CompanyName], [EmailAddress], [AzurePassReceived], [MemberProfileURL], [ID], [RegisteredForRaffel] FROM [Members]" DeleteCommand="DELETE FROM [Members] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Members] ([Name], [CompanyName], [EmailAddress], [AzurePassReceived], [MemberProfileURL], [RegisteredForRaffel]) VALUES (@Name, @CompanyName, @EmailAddress, @AzurePassReceived, @MemberProfileURL, @RegisteredForRaffel)" UpdateCommand="UPDATE [Members] SET [Name] = @Name, [CompanyName] = @CompanyName, [EmailAddress] = @EmailAddress, [AzurePassReceived] = @AzurePassReceived, [MemberProfileURL] = @MemberProfileURL, [RegisteredForRaffel] = @RegisteredForRaffel WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="CompanyName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="AzurePassReceived" Type="Boolean" />
        <asp:Parameter Name="MemberProfileURL" Type="String" />
        <asp:Parameter Name="RegisteredForRaffel" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="CompanyName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="AzurePassReceived" Type="Boolean" />
        <asp:Parameter Name="MemberProfileURL" Type="String" />
        <asp:Parameter Name="RegisteredForRaffel" Type="Boolean" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
