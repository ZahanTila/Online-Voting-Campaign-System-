<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Election.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Vote Information
    </h2>

    <p>
        <asp:Label ID="Label3" runat="server" Text="District"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="District" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Area"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Area" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Center Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Cname" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Total Vote Count"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Totalvc" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Party Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Partyname" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Vote Count"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Votecount" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </p>
    
</asp:Content>
