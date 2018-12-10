<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Election.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User DATA</title>
    <h2>
        User Data
    </h2>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Userdata" Width="986px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Birth" HeaderText="Birth" SortExpression="Birth" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="Userdata" runat="server" ConnectionString="<%$ ConnectionStrings:Dataconnection %>" DeleteCommand="DELETE FROM [Registration] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Registration] ([Name], [Birth], [Gender], [Email], [Mobile], [Password]) VALUES (@Name, @Birth, @Gender, @Email, @Mobile, @Password)" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE [Registration] SET [Name] = @Name, [Birth] = @Birth, [Gender] = @Gender, [Email] = @Email, [Mobile] = @Mobile, [Password] = @Password WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Birth" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Birth" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </p>
        </div>
    </form>
</body>
</html>
