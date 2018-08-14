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
            <br />
            </font>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" EnableTheming="False" Height="81px" Width="222px">
            <h1>You are currently logged in.</h1>

            <asp:Button ID="Button1" runat="server" Text="Log Out" Width="64px" OnClick="Button1_Click" />
        </asp:Panel>

        <asp:Panel ID="Panel4" runat="server" Height="221px" Width="275px">
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
            Confirm Password:<br />
            <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClientClick="return doesPasswordMatch()" OnClick="Button4_Click" Text="Create Account" />
            <asp:Button ID="ButtonNoCreate" runat="server" OnClick="ButtonNoCreate_Click" Text="No Thanks" />
            <br />
            <br />
            <br />
            </font>
        </asp:Panel>
    <script>

        function doesPasswordMatch(PB, CPB) {
            var UBVariable = document.getElementById('<%= TextBox3.ClientID %>').value;
            var PBVariable = document.getElementById('<%= TextBox4.ClientID %>').value;
            var CPBVariable = document.getElementById('<%= TextBox5.ClientID %>').value;
            if (UBVariable.length < 1) {
                alert('Please fill all boxes!')
                return false;
            }
            if (PBVariable != CPBVariable) {
                alert('Password does not match');
                return false;
            }
            if (PBVariable.length < 8) {
                alert('Password isnt long enough');
                return false;
            }
            var DoesPasswordHaveNumber = false;
            for (i = 0; i < PBVariable.length; i++) {

                var isThisNumber = parseInt(PBVariable.charAt(i));
                if (Number.isInteger(isThisNumber.value) == true) {
                    DoesPasswordHaveNumber = true;
                }

            }

            if (DoesPasswordHaveNumber == false) {
                alert('Password must contain at least one number.')
            }
            else
            {
                alert('Username and password accepted!');
            }

        }
    </script>
   
</asp:Content>

 