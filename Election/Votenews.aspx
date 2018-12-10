<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Votenews.aspx.cs" Inherits="Election.Votenews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Election News</title>
    <h2>
        Election News
    </h2>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Enews" Width="982px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="Center" HeaderText="Center" SortExpression="Center" />
                        <asp:BoundField DataField="Total_Vote" HeaderText="Total_Vote" SortExpression="Total_Vote" />
                        <asp:BoundField DataField="Party" HeaderText="Party" SortExpression="Party" />
                        <asp:BoundField DataField="Vote" HeaderText="Vote" SortExpression="Vote" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="Enews" runat="server" ConnectionString="<%$ ConnectionStrings:Dataconnection %>" SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
