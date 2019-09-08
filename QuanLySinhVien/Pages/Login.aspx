﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QuanLySinhVien.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Đăng nhập</title>
	<link href="../CSS/bootstrap.min.css" rel="stylesheet" />
	<link href="../CSS/customStyles.css" rel="stylesheet" />
	<link href="../CSS/beyond.min.css" rel="stylesheet" />
	<link href="../CSS/animate.min.css" rel="stylesheet" />
	<script src="../JS/jquery.min.js"></script>
	<script src="../JS/bootstrap.js"></script>
</head>
<body>
	<form id="loginForm" runat="server" method="post">
		<div class="login-container animated fadeInDown">
			<div class="loginbox bg-white">
				<div class="loginbox-title" style="font-family: sans-serif;"></div>
				<div class="loginbox-social">
					<div class="logo">
						<asp:Image runat="server" ImageUrl="~/Images/logo_DLU.png" />
					</div>
					<div class="social-title" style="padding-top: 10px; color: black;">
						Đăng nhập Hệ thống Quản lý Sinh viên
					</div>
				</div>
				<div class="loginbox-or">
					<div class="or-line"></div>
				</div>
				<div class="loginbox-textbox">
					<asp:Label runat="server" Text="Tên đăng nhập:" />
					<asp:TextBox runat="server" ID="txt_username" CssClass="form-control" />
				</div>
				<div class="loginbox-textbox">
					<asp:Label runat="server" Text="Mật khẩu:" />
					<asp:TextBox runat="server" ID="txt_password" CssClass="form-control" TextMode="Password" />
				</div>
				<div class="loginbox-textbox">
					<asp:Button runat="server" ID="btn_login" CssClass="btn btn-primary btn-block" Text="Đăng nhập"/>
				</div>
			</div>
		</div>
	</form>
</body>
</html>