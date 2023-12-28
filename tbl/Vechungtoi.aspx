<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vechungtoi.aspx.cs" Inherits="tbl.Vechungtoi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Về chúng tôi</title>
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
                    <a href="~/Dangky.aspx" runat="server">Đăng ký</a>
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
            <h2 class="txt2">Về Nike</h2>
            <div id="about-us-text">
                Sứ mệnh của chúng tôi là điều thúc đẩy chúng tôi làm mọi thứ có thể để mở rộng tiềm năng của con người. Chúng tôi làm điều đó bằng cách tạo ra những đổi mới thể thao đột phá, bằng cách làm cho sản phẩm của chúng tôi bền vững hơn, bằng cách xây dựng một đội ngũ sáng tạo và đa dạng trên toàn cầu và bằng cách tạo ra tác động tích cực trong cộng đồng nơi chúng tôi sống và làm việc.
            </div>
            <h3 class="txt2">Thành viên</h3>
            <div id="target" style="display: block; width: 30%;">
                <div>
                    <img class="avatar" src="#"/>
                    <br />
                    <span>Phạm Tuấn Hà</span>
                </div>
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
