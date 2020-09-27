<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />

<!DOCTYPE html>
<html>
<head>
	<title>Sign in</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="${base}/css/users/UserSignIn.css">
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
			<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<div class="sign-in">
				<div class="title">
					<span style="font-size: 25px; margin-left: 50px;">Đăng nhập ngay!</span>
					<span style="margin-left: 300px;">Thành viên mới?<a href="#"> Đăng ký </a> tại đây</span>
				</div>
				<div class="content">
					<div class="left">
						<label for="email">Email*</label><br>
						<input type="" name="" placeholder="Vui lòng nhập email của bạn"><br>
						<label for="password">Mật khẩu*</label><br>
						<input type="" name="" placeholder="Vui lòng nhập mật khẩu của bạn" ><br>
						<a href="#">Quên mật khẩu?</a>
					</div>
					<div class="right">
						<a href="#"><button style="background: #ee6e23; border: 0px;">ĐĂNG NHẬP</button></a><br>
						<span>Hoặc, đăng nhập bằng</span><br>
						<a href="#"><button style="background: #4b5c8a; border: 0px;">Facebook</button></a>
						<a href="#"><button style="background: #d44837; border: 0px;">Google</button></a>
					</div>
				</div>
			</div>
		</div>
		<!-- /main -->
		<!-- footer -->
			<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /wrapper -->
</body>
</html>