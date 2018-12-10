<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Voterinfo.aspx.cs" Inherits="Election.Voterinfo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Voterinfo" ForeColor="#333333" GridLines="None" Width="978px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        
                        <asp:BoundField DataField="NID" HeaderText="NID" SortExpression="NID" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="Voterinfo" runat="server" ConnectionString="<%$ ConnectionStrings:Dataconnection %>" DeleteCommand="DELETE FROM [Voter] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Voter] ([Name], [Address], [District], [Area], [Birth], [Mobile], [NID], [Gender]) VALUES (@Name, @Address, @District, @Area, @Birth, @Mobile, @NID, @Gender)" SelectCommand="SELECT * FROM [Voter]" UpdateCommand="UPDATE [Voter] SET [Name] = @Name, [Address] = @Address, [District] = @District, [Area] = @Area, [Birth] = @Birth, [Mobile] = @Mobile, [NID] = @NID, [Gender] = @Gender WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter Name="Birth" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="NID" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter Name="Birth" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="NID" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
