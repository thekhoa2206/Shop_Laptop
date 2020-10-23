<!-- sử dụng tiếng việt -->
<%@page import="com.devpro.entities.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- spring taglibs -->
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop</title>

<!-- css -->
<link href="${base}/css/users/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container" style=" width: 1500px;margin: auto; background: #f8f9fb;">

		<div class="row" style=" width: 1000px;margin: auto; margin-bottom: 50px;">

			<h1 class="my-4">Thanh toán</h1>
			<div class="col-lg-9" style="display: flex;">

				<div class="row">
					<div class="col-lg-12 col-md-12 mb-12">
						<form action="${base }/cart/finish" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Họ và tên</label> <br>
								<sec:authorize access="isAuthenticated()">
									<div>
										<%
											String username = "";
										Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication()
												.getPrincipal();
										if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
											username = ((User) principal).getFirstName() + " " + ((User) principal).getName();
										}
										out.write(username);
										%>
									</div>
								</sec:authorize>
								<sec:authorize access="!isAuthenticated()">
									<input type="text" name="customerName"
										placeholder="Vui lòng nhập trên của bạn" style="height: 40px; border: 1px solid red; border-radius: 5px; width: 250px;">
								</sec:authorize>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Số điện thoại</label><br>
								<sec:authorize access="isAuthenticated()">
									<div>
										<%
											String username1 = "";
										Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication()
												.getPrincipal();
										if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
											username1 = ((User) principal).getPhone();
										}
										out.write(username1);
										%>
									</div>
								</sec:authorize>
								<sec:authorize access="!isAuthenticated()">
									<input type="text" name="customerPhone"
										placeholder="Nhập phone" style="height: 40px; border: 1px solid red; border-radius: 5px; width: 250px;">
								</sec:authorize>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Email</label><br>
								<sec:authorize access="isAuthenticated()">
									<div>
										<%
											String username1 = "";
										Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication()
												.getPrincipal();
										if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
											username1 = ((User) principal).getEmail();
										}
										out.write(username1);
										%>
									</div>
								</sec:authorize>
								<sec:authorize access="!isAuthenticated()">
									<input type="text" name="customerEmail"
										placeholder="Nhập Email" style="height: 40px; border: 1px solid red; border-radius: 5px; width: 250px;">
								</sec:authorize>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Địa chỉ giao hàng</label><br>
								<sec:authorize access="isAuthenticated()">
									<div>
										<%
											String username2 = "";
										Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication()
												.getPrincipal();
										if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
											username2 = ((User) principal).getAddress();
										}
										out.write(username2);
										%>
									</div>
								</sec:authorize>
								<sec:authorize access="!isAuthenticated()">
									<input type="text" name="customerAddress"
										placeholder="Vui Lòng nhập địa chỉ của bạn" style="height: 40px; border: 1px solid red; border-radius: 5px; width: 250px;">
								</sec:authorize>
							</div>
							<button type="submit" class="btn btn-primary">Thanh toán</button>

						</form>
					</div>
				</div>
				<div class="row" style="margin-left: 150px;">
					<div class="col-lg-12 col-md-12 mb-12">
						<h1 class="my-4"></h1>
						<table class="table" style="background: white; border-radius: 5px; width: 600px;">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Tên sản phẩm</th>
									<th scope="col">Đơn giá</th>
									<th scope="col">Số lượng</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${GIO_HANG.cartItems}" var="item">

									<tr>
										<th scope="row">1</th>
										<td>${item.productName }</td>
										<td>${item.unitPriceVN }</td>
										<td>${item.quantity }</td>
										<td><button onclick="confirmDelete('${item.productId}')">Xóa</button></td>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>

	<script src="${base}/css/users/bootstrap/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="${base}/js/users/Cart.js"></script>
</body>

</html>
