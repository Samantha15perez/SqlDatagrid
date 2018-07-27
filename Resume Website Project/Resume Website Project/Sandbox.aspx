<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sandbox.aspx.cs" Inherits="Resume_Website_Project.Sandbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="238px" style="margin-top: 0px" Width="170px">
            <h1>Please, Log in.</h1>
            <font size="2" face="verdana" align="left" color="#8999E5">Username:<br /><asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Height="16px" Width="120px"></asp:TextBox>
            <br />
            Password:</font> <font size="2" face="verdana" align="left" color="#8999E5">
            <br />
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Log In" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Dont have a Login?" />
            <br />
            <br />
            <asp:Button ID="ButtonDEBUG" runat="server" OnClick="ButtonDEBUG_Click" Text="DEBUG" />
            <br />
            </font>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" EnableTheming="False" Height="81px" Width="222px">
            <h1>You are currently logged in.</h1>

            <asp:Button ID="Button1" runat="server" Text="Log Out" Width="64px" OnClick="Button1_Click" />
        </asp:Panel>

        <asp:Panel ID="Panel4" runat="server" Height="187px" Width="275px">
            <font size="2" face="verdana" align="left" color="#8999E5">Please select a username and password.<br />
            <br />
            [UNDER CONSTRUCTION]<br />
            <br />
            Username:
            <br />
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            Password:</font> <font size="2" face="verdana" align="left" color="#8999E5">
            <br />
            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Create Account" />
            <asp:Button ID="ButtonNoCreate" runat="server" OnClick="ButtonNoCreate_Click" Text="No Thanks" />
            <asp:Panel ID="Panel5" runat="server" BackColor="Red" Height="218px">
                <font align="left" color="#8999E5" face="verdana" size="2">
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="271px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                    </Columns>
                </asp:GridView>
                </font>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SandboxLoginTestConnectionString %>" DeleteCommand="DELETE FROM [AdminLogin] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [AdminLogin] ([UserName], [Pass]) VALUES (@UserName, @Pass)" SelectCommand="SELECT * FROM [AdminLogin]" UpdateCommand="UPDATE [AdminLogin] SET [Pass] = @Pass WHERE [UserName] = @UserName">
                    <DeleteParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Pass" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pass" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            <br />
            <br />
            <br />
            </font>
        </asp:Panel>

   
</asp:Content>

 