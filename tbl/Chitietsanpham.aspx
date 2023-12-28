<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chitietsanpham.aspx.cs" Inherits="tbl.Chitietsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/StyleSheet.css" />
</head>
<body>
    <div id="container">
        <div id="header-container">
            <div id="logo-navigation-container">
                <a id="logo" href="Index.aspx">
                    <img src="img/nike_PNG19.png"/>
                </a>
                <div id="usernamelogout" runat="server">
                    <a href="#" runat="server" id="username">User name</a>
                    <a href="~/Dangxuat.aspx" runat="server">Đăng xuất</a>
                </div>
                <div id="loginregister" runat="server">
                    <a href="~/Dangnhap.aspx" runat="server">Đăng nhập</a>
                    <a href="~/Dangki.aspx" runat="server">Đăng ký</a>
                </div>
            </div>

            <div id="header-navigation-container">
                <ul id="header-navigation-menu">
                    <li><a href="Index.aspx">Trang chủ</a></li>
                    <li><a href="Sanpham.aspx">Sản phẩm</a></li>
                    <li><a href="Vechungtoi.aspx">Về chúng tôi</a></li>
                    <li><a href="Giohang.aspx">Giỏ hàng</a></li>
                </ul>

             </div>
        </div>

        <div id="body">
            <div id="detailproduct" runat="server">
                <img src="#" class="infor-product"/>
                <div class="infor-product">
                    <h3 style="font-family: Roboto, sans-serif; margin-top: 10px;">Tên sản phẩm</h3>
                    <h4 style="font-family: Roboto, sans-serif; margin-top: 40px;">Trạng thái: Còn hàng</h4>
                    <h4 style="font-family: Roboto, sans-serif; margin-top: 10px;">Giá</h4>
                    
                    <a class="btn-add-to-cart" style="font-family: Roboto, sans-serif; " href="#">Thêm vào giỏ hàng</a>
                </div>
                <h3 style="font-family: Roboto, sans-serif; margin-top: 40px;">Mô tả</h3>
                <p style="margin-top: 10px;">Mô tả chi tiết sản phẩm</p>
            </div>
        </div>

        <div id="footer">
            <div>
                <h3>Liên hệ</h3>
                <a>Địa chỉ: 96 Định Công, Thanh Xuân, Hà Nội </a>
                <a>Email: nike_store@shop.com</a>
                <a>Điện thoại: 19001006</a>
            </div>
            <div>
                <h3>Hỗ trợ</h3>
                <a href="#">Vận chuyển</a>
                <a href="#">Thanh toán</a>
            </div>
            <div>
                <h3>Dịch vụ</h3>
                <a href="#">Bảo mật người dùng</a>
                <a href="#">Chăm sóc khách hàng</a>
                <a href="#">Góp ý</a>
            </div>
        </div>

    </div>
</body>
</html>
