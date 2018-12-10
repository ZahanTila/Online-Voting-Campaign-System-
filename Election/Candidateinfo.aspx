<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Candidateinfo.aspx.cs" Inherits="Election.Voterinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Candidtae Information</title>
    <h1>
                    Candidate Information
                </h1>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" style="height: 26px" />
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Voterdata" ForeColor="#333333" GridLines="None" Width="985px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                       
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        
                        <asp:BoundField DataField="Party" HeaderText="Party" SortExpression="Party" />
                        
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
                <asp:SqlDataSource ID="Voterdata" runat="server" ConnectionString="<%$ ConnectionStrings:Dataconnection %>" DeleteCommand="DELETE FROM [Candidate] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Candidate] ([Name], [District], [Area], [NID], [Party], [Sign]) VALUES (@Name, @District, @Area, @NID, @Party, @Sign)" SelectCommand="SELECT [Id], [Name], [District], [Area], [NID], [Party], [Sign] FROM [Candidate]" UpdateCommand="UPDATE [Candidate] SET [Name] = @Name, [District] = @District, [Area] = @Area, [NID] = @NID, [Party] = @Party, [Sign] = @Sign WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        
                        <asp:Parameter Name="Party" Type="String" />
                        
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        
                        <asp:Parameter Name="Party" Type="String" />
                        
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
