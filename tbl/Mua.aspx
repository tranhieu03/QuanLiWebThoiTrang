<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mua.aspx.cs" Inherits="tbl.Mua" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giỏ hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="css/giohang.css" />
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







        <div id="body" style="font-family: Roboto,sans-serif">
            <div id="mua-box">
                <img src="img/checked.png" id="img-checked"/>
            </div>
            <div id="buy-success">
                <span>Mua hàng thành công</span>
            </div>
            <div id="back-to-index">
                <a href="Index.aspx" class="back-to-index">Quay về trang chủ</a>
                <a href="Sanpham.aspx" class="back-to-index">Tiếp tục mua hàng</a>
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
