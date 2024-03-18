<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThemNhanVien.aspx.cs" Inherits="QLNV.ThemNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .pink-text {
        color: #FF1493;
    }
    .light-yellow-bg {
        background-color: #FFFACD;
    }
    .highlighted-header {
        background-color: #FF1493;
        color: #FFF;
        padding: 10px;
    }
</style>

<div class="highlighted-header">
    <h2>Thêm Mới Nhân Viên</h2>
</div>

<div class="row mt-3 mb-2">
    <div class="col-md-2 pink-text light-yellow-bg">Họ nhân viên</div>
    <div class="col-md-10">
        <asp:TextBox ID="txtHo" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-2 pink-text light-yellow-bg">Tên nhân viên</div>
    <div class="col-md-10">
        <asp:TextBox ID="txtTen" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-2 pink-text light-yellow-bg">Giới tính</div>
    <div class="col-md-10">
        <asp:RadioButton ID="rdNam" runat="server" Checked="true" Text="Nam" GroupName="GT" />
        <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT" />
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-2 pink-text light-yellow-bg">Ngày sinh</div>
    <div class="col-md-10">
        <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-2 pink-text light-yellow-bg">Nơi sinh</div>
    <div class="col-md-10">
        <asp:TextBox ID="txtNoisinh" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-2 pink-text light-yellow-bg">Phòng</div>
    <div class="col-md-10">
        <asp:DropDownList ID="ddlPhong" runat="server" CssClass="form-control"
            DataSourceID="dsPhong" DataTextField="TenPhong" DataValueField="MaPhong">
        </asp:DropDownList>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-2"></div>
    <div class="col-md-10">
        <asp:Button ID="btSave" runat="server" Text="Lưu" OnClick="btSave_Click" CssClass="btn btn-primary" />
        <asp:Label ID="lbThongBao" runat="server" Text="" CssClass="pink-text light-yellow-bg"></asp:Label>
    </div>
</div>

<asp:SqlDataSource ID="dsPhong" runat="server"
    ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
    SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
</asp:Content>
