<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Election.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
<h1>Central Database</h1> 
   </center>

    <div class="row">
        <div class="col-md-4">
            <h2>Voter Database</h2>
            <p>
                For Voter Information And Database
            </p>
            <p>
                <a class="btn btn-default" runat="server" href="~/Voterinfo">Click Here &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Candidate Datbase</h2>
            <p>
                For Candidate Information And Database
            <p>
                <a class="btn btn-default" runat="server" href="~/Candidateinfo">Click Here &raquo;</a>
            </p>
        </div>
         <div class="col-md-4">
            <h2>Vote Information</h2>
            <p>
               For Vote Information And Database
            <p>
                <a class="btn btn-default" runat="server" href="~/Newsinfo">Click Here &raquo;</a>
            </p>
        </div>
    </div>
    
</asp:Content>
