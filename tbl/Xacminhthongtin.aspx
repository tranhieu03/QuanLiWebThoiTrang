<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xacminhthongtin.aspx.cs" Inherits="tbl.Nhapthongtin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nhập thông tin</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="css/DangKy.css" />
    <style>
        .Back_Next {
            margin-top: 20px;
            height: 30px;
            background: black;
            color: white;
            border: none;
            padding: 0px 5px 0px 5px;
        }

        #Next {
            margin-left: 250px;
        }
        .dk > a {
            padding: 6px;
            background: black;
            color: white;
            text-decoration: none;
        }
        #error {
            color: red;
        }
    </style>
</head>
<body>
    <div id="container">
        <div id="header-container">
            <div id="logo-navigation-container">
                <a id="logo" href="Index.aspx">
                    <img src="img/nike_PNG19.png" />
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
            <form id="formTaoTaiKhoan" method="post" runat="server" onsubmit="return check();" >
                <div class="khungBao">
                    <h2>Xác minh thông tin</h2>
                    <div class="nhapInfor">
                        <input type="text" name="Ten" id="Ten" class="iptInfor" placeholder="Tên" />
                        <input type="text" class="iptInfor" name="SDT" id="SDT" placeholder="Số điện thoại" />
                        <div class="errorText" id="error" runat="server"></div>
                    </div>
                    <div class="dk">
                        <a href="Quenmatkhau.aspx">Quay lại</a>
                        <input type="submit" value="Tiếp theo" id="Next" class="Back_Next" />
                    </div>
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
<script>
    function check() {
        var ten = document.getElementById("Ten").value;
        var sdt = document.getElementById("SDT").value;
        var error = document.getElementById("error");
        if (ten === "" || sdt === "") {
            error.innerHTML = "*Tên và số điện thoại không được bỏ trống";
            return false;
        }
    }
</script>
