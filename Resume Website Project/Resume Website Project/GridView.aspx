<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="Resume_Website_Project.GridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <asp:GridView ID="GridView1" runat="server" align="Center" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Name" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="90%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SandboxLoginTestConnectionString %>" DeleteCommand="DELETE FROM [ConsumerInformation] WHERE [Name] = @Name" InsertCommand="INSERT INTO [ConsumerInformation] ([Name], [Address], [Phone], [Email]) VALUES (@Name, @Address, @Phone, @Email)" SelectCommand="SELECT * FROM [ConsumerInformation]" UpdateCommand="UPDATE [ConsumerInformation] SET [Address] = @Address, [Phone] = @Phone, [Email] = @Email WHERE [Name] = @Name" OnSelecting="SqlDataSource2_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    
    <asp:Panel ID="PanelInput" align="Center" runat="server" Height="47px" Width="100%" HorizontalAlign="Center">
        <asp:Button ID="ButtonAddRow" runat="server" align="Center" Height="22px" OnClick="ButtonAddRow_Click" style="margin-top: 13px" Text="Add Row" Width="109px" />
        <asp:TextBox ID="TextBoxName" runat="server" align="Center" ForeColor="Silver" OnTextChanged="TextBoxName_TextChanged">Name</asp:TextBox>
        <asp:TextBox ID="TextBoxAddress" runat="server" align="Center" ForeColor="Silver">Address</asp:TextBox>
        <asp:TextBox ID="TextBoxPhone" runat="server" align="Center" ForeColor="Silver">Phone</asp:TextBox>
        <asp:TextBox ID="TextBoxEmail" runat="server" align="Center" ForeColor="Silver">Email</asp:TextBox>
    </asp:Panel>
    
</asp:Content>
