<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel.Master" AutoEventWireup="true" CodeBehind="Voter.aspx.cs" Inherits="Election.Voter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Add New Voter Information
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
        <asp:Label ID="Label7" runat="server" Text="Total Voter"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="NID" runat="server"></asp:TextBox>
    </p>


    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </p>

</asp:Content>
