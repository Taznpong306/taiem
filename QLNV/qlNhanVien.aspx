<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="QLNV.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <h2 class="text-center">DANH SÁCH NHÂN VIÊN</h2>

        <asp:SqlDataSource ID="dsNhanVien" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
            DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
            InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" 
            SelectCommand="SELECT * FROM [NhanVien]"
            UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
            <DeleteParameters>
                <asp:Parameter Name="MaNV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
                <asp:Parameter Name="MaNV" Type="Int32" />
            </UpdateParameters>

        </asp:SqlDataSource>
        <asp:GridView ID="gvNhanVien" runat="server" AutoGeneralteColumns="false" 
            DataSourcID="dsNhanVien" DataSourceID="dsNhanVien" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="MaNV">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
                <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
                <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
                <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
                <asp:BoundField DataField="NgaySinh" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày sinh " />
                <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
                <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
            </Columns>
           <HeaderStyle CssClass="bg-secondary text-light" />
        <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
        </asp:GridView>
    </div>
</asp:Content>
