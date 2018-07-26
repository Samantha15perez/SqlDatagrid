<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sandbox.aspx.cs" Inherits="Resume_Website_Project.Sandbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="214px" style="margin-top: 0px" Width="170px">
            <h1>Please, Log in.</h1>
            <font size="2" face="verdana" align="left" color="#8999E5">Username:<br /><asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
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
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 26px" Text="Create Account" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
            <br />
            </font>
        </asp:Panel>

    </form>
</asp:Content>

 