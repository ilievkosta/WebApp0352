<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="WebApp0352.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Sidebar" runat="server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NewsBar" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Article" HeaderText="Article" SortExpression="Article" />
            <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TableNews] WHERE [Id] = @original_Id AND (([Article] = @original_Article) OR ([Article] IS NULL AND @original_Article IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL))" InsertCommand="INSERT INTO [TableNews] ([Id], [Article], [Content]) VALUES (@Id, @Article, @Content)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Article], [Content] FROM [TableNews]" UpdateCommand="UPDATE [TableNews] SET [Article] = @Article, [Content] = @Content WHERE [Id] = @original_Id AND (([Article] = @original_Article) OR ([Article] IS NULL AND @original_Article IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Article" Type="String" />
            <asp:Parameter Name="original_Content" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Article" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Article" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Article" Type="String" />
            <asp:Parameter Name="original_Content" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Article:
            <asp:Label ID="ArticleLabel" runat="server" Text='<%# Eval("Article") %>' />
            <br />
            Content:
            <asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>' />
            <br />
            
            <br />

           
<br />
        </ItemTemplate>
       
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Article], [Content] FROM [TableNews]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [TableNews] WHERE [Id] = @original_Id AND (([Article] = @original_Article) OR ([Article] IS NULL AND @original_Article IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL))" InsertCommand="INSERT INTO [TableNews] ([Id], [Article], [Content]) VALUES (@Id, @Article, @Content)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [TableNews] SET [Article] = @Article, [Content] = @Content WHERE [Id] = @original_Id AND (([Article] = @original_Article) OR ([Article] IS NULL AND @original_Article IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Article" Type="String" />
        <asp:Parameter Name="original_Content" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="Article" Type="String" />
        <asp:Parameter Name="Content" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Article" Type="String" />
        <asp:Parameter Name="Content" Type="String" />
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Article" Type="String" />
        <asp:Parameter Name="original_Content" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
     <asp:TextBox ID="TextBoxArticle" runat="server"></asp:TextBox>
     <asp:TextBox ID="TextBoxContent" runat="server"></asp:TextBox>
        <br />
     <asp:Button ID="ButtonAddNews" runat="server" Text="Добави Новина" OnClick="ButtonDelete_Click" />
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
     
</asp:Content>
