<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Election.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Registration </h2>
    <h3>Please Submit Your Valid Information</h3>
    <p>Use this area to provide additional information.</p>

    <p>

    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Date Of Birth"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Birth" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="Gender" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Mobile" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Cpassword" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Please Check All The Information"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

    </p>
</asp:Content>
