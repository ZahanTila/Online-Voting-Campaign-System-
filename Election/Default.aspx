<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Election._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Election System</h1>
        
       
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Election News</h2>
            <p>
                You Can See Here Election Current Status.
            </p>
            <p>
                <a class="btn btn-default" runat="server" href="~/Newsinfo">Click Here &raquo;</a>
            </p>
        </div>
        
    </div>

</asp:Content>
