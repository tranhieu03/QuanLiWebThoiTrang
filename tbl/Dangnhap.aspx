<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="tbl.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="css/DangNhap.css" />
</head>
<body>
    <div id="container">
        <div id="header-container">
            <div id="logo-navigation-container">
                <a id="logo" href="Index.aspx">
                    <img src="img/nike_PNG19.png"/>
                </a>
                <div id="usernamelogout" runat="server">
                    <a href="#" runat="server">User name</a>
                    <a href="~/Index.aspx" runat="server">Đăng xuất</a>
                </div>
                <div id="loginregister">
                    <a href="Dangnhap.aspx" style="display: none;">Đăng nhập</a>
                    <a href="Dangki.aspx">Đăng ký</a>
                </div>
            </div>

            <div id="header-navigation-container">
                <ul id="header-navigation-menu">
                    <li><a href="Index.aspx">Trang chủ</a></li>
                    <li><a href="SanPham.aspx">Sản phẩm</a></li>
                    <li><a href="VeChungToi.aspx">Về chúng tôi</a></li>
                    <li><a href="GioHang.aspx">Giỏ hàng</a></li>
                </ul>

             </div>
        </div>







        <div id="body">
            <form id="formdangnhap" runat="server" method="post" onsubmit="return checkinfordangnhap();">
                <div class="KhungBao">
                    <h2>Đăng Nhập</h2>
                    <div class="nhapInfor">
                        <input type="text" name="email" placeholder="Email" class="iptInfor" id="dnEmail" />
                        <div class="errorText" id="error_email" runat="server" ></div>

                        <input type="password" name="pass" placeholder="Mật khẩu" class="iptInfor" id="dnPass" />
                        <div class="errorText" id="error_pass" runat="server"></div>
                    </div>

                    <div class="QuenMatKhau" style="width: 100%; margin-top: 20px; text-align: center;">
                        <a href="Quenmatkhau.aspx" style="text-decoration: none;">Quên mật khẩu?</a>
                    </div>
                    <asp:Button ID="btnDangNhap" CssClass="btnDK_DN" runat="server" Text="Đăng nhập" name="btnDangNhap" OnClick="btnDangNhap_Click"/>
                </div>
                <div class="SangTrangDangKy">
                    <span>Nếu bạn chưa có tài khoản ?<a href="Dangki.aspx" style="text-decoration: none; margin-left: 10px;">Đăng ký</a></span>
                </div>
            </form>
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

<script src="js/JavaScript.js" type="text/javascript"></script>
