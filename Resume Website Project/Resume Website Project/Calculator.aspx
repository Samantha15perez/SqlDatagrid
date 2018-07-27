<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="CalculatorProject.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div align="center">
    <asp:Panel ID="Panel1"  runat="server" BackColor="Silver" Height="128px" Width="355px" BorderWidth="10px" BorderColor="#999999">
        
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFF66" BorderWidth="10px" OnTextChanged="TextBox3_TextChanged" Width="331px" BorderColor="Silver" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" BorderWidth="10px" OnTextChanged="TextBox4_TextChanged" Width="330px" BorderColor="Silver"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BorderColor="Silver" BorderWidth="10px" Height="50px" OnClick="Button1_Click" Text="+" Width="50px" />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BorderColor="Silver" BorderWidth="10px" Height="50px" OnClick="Button2_Click" Text="-" Width="52px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BorderColor="Silver" BorderWidth="10px" Height="50px" OnClick="Button3_Click" Text="*" Width="50px" ForeColor="Black" />
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button4" runat="server" BorderColor="Silver" BorderWidth="10px" Height="50px" OnClick="Button4_Click" Text="/" Width="50px" />
        
        
    </asp:Panel>
            </div>
   
</asp:Content>
