<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newsinfo.aspx.cs" Inherits="Election.Newsinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vote Infromation</title>
    <h1>
        Vote Information
    </h1>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />

            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Newsinfos" ForeColor="#333333" GridLines="None" Width="983px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="Center" HeaderText="Center" SortExpression="Center" />
                        <asp:BoundField DataField="Total_Vote" HeaderText="Total_Vote" SortExpression="Total_Vote" />
                        <asp:BoundField DataField="Party" HeaderText="Party" SortExpression="Party" />
                        <asp:BoundField DataField="Vote" HeaderText="Vote" SortExpression="Vote" />
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

                <asp:SqlDataSource ID="Newsinfos" runat="server" ConnectionString="<%$ ConnectionStrings:Dataconnection %>" DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([District], [Area], [Center], [Total_Vote], [Party], [Vote]) VALUES (@District, @Area, @Center, @Total_Vote, @Party, @Vote)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [District] = @District, [Area] = @Area, [Center] = @Center, [Total_Vote] = @Total_Vote, [Party] = @Party, [Vote] = @Vote WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter Name="Center" Type="String" />
                        <asp:Parameter Name="Total_Vote" Type="Int32" />
                        <asp:Parameter Name="Party" Type="String" />
                        <asp:Parameter Name="Vote" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter Name="Center" Type="String" />
                        <asp:Parameter Name="Total_Vote" Type="Int32" />
                        <asp:Parameter Name="Party" Type="String" />
                        <asp:Parameter Name="Vote" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </p>
        </div>
    </form>
</body>
</html>
