<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangki.aspx.cs" Inherits="tbl.Dangki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="css/DangKy.css" />
    <script>
        function checkinfordangky() {
            var ten = document.getElementById("Ten").value;
            var email = document.getElementById("Email").value;
            var sdt = document.getElementById("SDT").value;
            var pass = document.getElementById("Pass").value;
            var cfpass = document.getElementById("ComfirmPass").value;
            var erTen = document.getElementById("error_ten");
            var erEmaail = document.getElementById("error_email");
            var erSDT = document.getElementById("error_sdt");
            var erPass = document.getElementById("error_pass");
            var erCfPass = document.getElementById("error_confirm");
            var cb = document.getElementById("DieuKhoan").checked;
            var lb = document.getElementById("lbCheckBox");

            var ok = true;

            if (ten == "") {
                erTen.style.color = "red";
                erTen.innerHTML = "* Tên không được rỗng";
                ok = false;

            }

            if (sdt == "") {
                erSDT.style.color = "red";
                erSDT.innerHTML = "* SDT không được rỗng";
                ok = false;

            }

            if (email == "") {
                erEmaail.style.color = 'red';
                erEmaail.innerHTML = "* Email không được rỗng";
                ok = false;
            } else {
                console.log("ha");
                if (email.lastIndexOf("@gmail.com") === -1) {
                    erEmaail.style.color = 'red';
                    erEmaail.innerHTML = "* Email phải có @gmail.com";
                    ok = false;
                }
            }

            if (pass == "") {
                erPass.style.color = 'red';
                erPass.innerHTML = "* Pass không được rỗng";
                ok = false;
            }

            if (cfpass == "") {
                erCfPass.style.color = 'red';
                erCfPass.innerHTML = "* erCfPass không được rỗng"
                ok = false;
            }



            if (ok) {
                if (pass != cfpass) {
                    erCfPass.style.color = 'red';
                    erCfPass.innerHTML = "* Pass không giống với CfPass"
                    ok = false;
                }
            }

            if (!cb) {
                lb.style.color = "red";
                ok = false;
            } else {
                lb.style.color = "black";
            }

            return ok;

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
            <form id="formTaoTaiKhoan" method="post" runat="server" onsubmit="return checkinfordangky();">
                <div class="khungBao">
                    <h2>Đăng Ký</h2>
                    <div class="nhapInfor">
                        <input type="text" name="Ten" id="Ten" class="iptInfor" placeholder="Tên" />
                        <div class="errorText" id="error_ten" runat="server"></div>

                        <input type="text" value="" class="iptInfor" name="Email" id="Email" placeholder="Email" />
                        <div class="errorText" id="error_email" runat="server"></div>

                        <input type="text" value="" class="iptInfor" name="SDT" id="SDT" placeholder="Số điện thoại" />
                        <div class="errorText" id="error_sdt" runat="server"></div>

                        <input type="password" value="" class="iptInfor" name="Pass" id="Pass" placeholder="Mật khẩu" />
                        <div class="errorText" id="error_pass" runat="server"></div>

                        <input type="password" value="" class="iptInfor" name="ComfirmPass" id="ComfirmPass" placeholder="Mật khẩu xác nhận" />
                        <div class="errorText" id="error_confirm" runat="server"></div>


                    </div>
                    <label for="DieuKhoan" class="lbDieuKhoan" id="lbCheckBox">
                        <input type="checkbox" name="DieuKhoan" id="DieuKhoan" value="ok" />
                        Tôi đồng ý với điều khoản sử dụng.
                    </label>
                    <div class="dk">
                        <asp:Button class="btnDK_DN" ID="btnDangKy" name="DangKy" runat="server" Text="Đăng Ký" OnClick="BtnDangKy_Click" />
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
