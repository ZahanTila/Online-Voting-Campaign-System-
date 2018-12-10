<%@ Page Title="Log-In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Log-In.aspx.cs" Inherits="Election.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Log-In</h2>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Email-Id"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
    </p>
    <P>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </P>
    <P>
        
    </P>
   
</asp:Content>
