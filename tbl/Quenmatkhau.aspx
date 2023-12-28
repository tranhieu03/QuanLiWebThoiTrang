<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quenmatkhau.aspx.cs" Inherits="tbl.Quenmakhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="css/DangNhap.css" />
    <style>
        .Next{
            margin-top: 20px;
            margin-left: 80%;
            padding: 5px;
            height: 30px;
            background: black;
            color: white;
            border: none;
        }
    </style>
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
                    <a href="Dangnhap.aspx">Đăng nhập</a>
                    <a href="Dangki.aspx" style="display: none;">Đăng ký</a>
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
            <form id="formdangnhap" runat="server" method="post" onsubmit="return CheckQuen();">
                <div class="KhungBao">
                    <h2>Tìm email của bạn</h2>
                    <div class="nhapInfor" >
                        <input type="text" name="email" placeholder="Email" class="iptInfor" runat="server" id="dnEmail" />
                        <div class="errorText" id="error_email" runat="server" ></div>
                    </div>  
                    <input type="submit" class="Next" name="Next" value="Tiếp theo"/>
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
<script>
    function CheckQuen() {
        var email = document.getElementById("dnEmail").value;
        var erEmail = document.getElementById("error_email");
        if (email === "") {
            erEmail.style.color = 'red';
            erEmail.innerHTML = "* Email không được rỗng";
            return false;
        }
        if (email.lastIndexOf("@gmail.com") === -1) {
            erEmail.style.color = 'red';
            erEmail.innerHTML = "* Email phải có @gmail.com";
            return false;
        }    
    }
</script>
</body>
</html>
