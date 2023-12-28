<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themsanpham.aspx.cs" Inherits="tbl.Themsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/DangKy.css" />
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <style>
        #error {
            color: red;
        }
        .dk > a {
            padding: 6px;
            background: black;
            color: white;
            text-decoration: none;
        }
        .dk > input {
            margin-top: 20px;
            height: 30px;
            background: black;
            color: white;
            border: none;
            padding: 0px 5px 0px 5px;
            margin-left: 250px;
        }
        #type {
            margin-bottom: 30px;
            width: 100%;
            height: 30px;
            box-sizing: border-box;
            border: 1px solid black;
            padding-left: 7px;
        }
    </style>
    <script>
    var checkSubmit = function () {
        var id = document.getElementById("Ten").value;
        var img = document.getElementById("Email").value;
        var name = document.getElementById("SDT").value;
        var price = document.getElementById("Pass").value;
        if (id === "" || img === "" || name === "" || price === "") {
            document.getElementById("error").innerHTML = "*Id, Ảnh, Tên và Giá không được bỏ trống";
            return false;
        }
    }
        function Id() {
            document.getElementById("error_ten").innerHTML = "Đang nhập dữ liệu cho id";
            document.getElementById("error_email").innerHTML = "";
            document.getElementById("error_sdt").innerHTML = "";
            document.getElementById("error_pass").innerHTML = "";
        }
        function Img() {
            document.getElementById("error_email").innerHTML = "Đang nhập dữ liệu cho tên ảnh";
            document.getElementById("error_sdt").innerHTML = "";
            document.getElementById("error_pass").innerHTML = "";
            document.getElementById("error_ten").innerHTML = "";
        }
        function Name() {
            document.getElementById("error_sdt").innerHTML = "Đang nhập dữ liệu cho tên";
            document.getElementById("error_ten").innerHTML = "";
            document.getElementById("error_pass").innerHTML = "";
            document.getElementById("error_email").innerHTML = "";                        
        }
        function Price() {
            document.getElementById("error_pass").innerHTML = "Đang nhập dữ liệu cho giá";
            document.getElementById("error_email").innerHTML = "";                        
            document.getElementById("error_ten").innerHTML = "";
            document.getElementById("error_sdt").innerHTML = "";
        }
</script>
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
                    <a href="~/Index.aspx" runat="server">Đăng xuất</a>
                </div>
                <div id="loginregister" runat="server">
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
            <form id="formTaoTaiKhoan" method="post" runat="server" onsubmit="return checkSubmit();">
                <div class="khungBao">
                    <h2>Thêm sản phẩm</h2>
                    <div class="nhapInfor">
                        <input type="text" name="id" id="Ten" class="iptInfor" placeholder="ID" onchange="Id()" />
                        <div class="errorText" id="error_ten" runat="server"></div>

                        <input type="text" class="iptInfor" name="img" id="Email" placeholder="Ảnh" onchange="Img()" />
                        <div class="errorText" id="error_email" runat="server"></div>

                        <input type="text" class="iptInfor" name="name" id="SDT" placeholder="Tên" onchange="Name()" />
                        <div class="errorText" id="error_sdt" runat="server"></div>

                        <input type="text" class="iptInfor" name="price" id="Pass" placeholder="Giá" onchange="Price()" />
                        <div class="errorText" id="error_pass" runat="server"></div>

                        <select id="type" runat="server">
                            <option>Giày</option>
                            <option>Mũ</option>
                            <option>Áo</option>
                            <option>Quần</option>
                        </select>
                        <div class="errorText" id="error" runat="server"></div>


                    </div>
                    <div class="dk">
                        <a href="Sanpham.aspx">Quay lại</a>
                        <input type="submit" value="Thêm"/>
                    </div>
                </div>
            </form>
        </div>

        <div runat="server" id="Sosp" ></div>

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
