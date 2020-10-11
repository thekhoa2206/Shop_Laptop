<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />

<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<title>Sign Up</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" type="text/css"
	href="${base}/css/users/UserSignUp.css">
<link href="${base}/css/users/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${base}/css/users/bootstrap/js/jquery-3.5.1.min.js"></script>
<script src="${base}/css/users/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<!-- top -->
			<div class="top">
				<div class="left">
					<span>Tạo tài khoản</span>
				</div>
				<div class="right">
					<span>Bạn là thành viên? <a href="${base}/login">Đăng
							nhập</a> tại đây
					</span>
				</div>
			</div>
			<!-- /top -->
			<!-- mid -->

			<div class="mid">
				<form:form method="post" action="/save-guestUser"
							modelAttribute="user" enctype="multipart/form-data">
					<div class="top">
						<div class="form-row">
								<div class="form-group col-md-6">
									<label>Tên đăng nhập</label>
									<form:input type="text" class="form-control" path="username"
										placeholder="Nhập tên đăng nhập của bạn" />
								</div>
								<div class="form-group col-md-6">
									<label>Họ và tên đệm</label>
									<form:input type="text" class="form-control" path="firstName"
										placeholder="Nhập họ và tên đệm của bạn" />
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Mật khẩu</label>
									<form:input type="password" class="form-control"
										path="password" placeholder="Nhập mật khẩu của bạn" />
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Tên</label>
									<form:input type="text" class="form-control" path="name"
										placeholder="Nhập tên của bạn" />
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Email</label>
									<form:input type="email" class="form-control" path="email"
										placeholder="nguyenvana@gmail.com" />
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Số điện thoại</label>
									<form:input type="text" class="form-control" path="phone"
										placeholder="Nhập số điện thoại của bạn" />
								</div>
							</div>
							<div class="form-group" style="width: 772px; margin-left: 15px;">
								<label for="inputAddress">Địa chỉ</label>
								<form:input type="text" class="form-control" path="address"
									placeholder="1234 Main St" />
							</div>
							<div class="form-check" style="margin-left: 20px;">
							<label>Giới Tính</label> <br>
								<form:radiobutton path="gender" class="form-check-input"
									value="true" />
								<label class="form-check-label"> Nam </label>
								<form:radiobutton path="gender" class="form-check-input"
									value="false" />
								<label class="form-check-label"> Nữ </label>
							</div>
					</div>
					<div class="mid" style="margin-top: 10px;"></div>
					<div class="bot">

						<button type="submit" value="Lưu" class="btn btn-primary btn-sm"
								style="width: 200px; line-height: 28px; margin-left: -20px; margin-bottom: 50px;">Lưu</button><br>

						<p>
							Khi bạn nhấn Đăng ký, bạn đã đồng ý thực hiện mọi giao dịch mua
							bán theo <a href="#">điều kiện sử dụng và chính sách</a> của
							chúng tôi.
						</p>
					</div>
				</form:form>
			</div>
			<!-- /mid -->

		</div>
		<!-- /main -->
		<!-- footer -->
		<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /wrapper -->
</body>
</html>
