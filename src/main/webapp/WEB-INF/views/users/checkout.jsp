<!-- sử dụng tiếng việt -->
<%@page import="com.devpro.entities.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- spring taglibs -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Lớp JAVA10 Devpro</title>

<!-- css -->
<link href="${base}/css/users/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container">

		<div class="row">


			<div class="col-lg-9">

				<div class="row">
					<h1 class="my-4">Thanh toán</h1>
					<div class="col-lg-12 col-md-12 mb-12">
						<form action="${base }/cart/finish" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Họ và tên</label> <input
									type="text" class="form-control" name="customerName"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Nhập họ và tên của bạn">
							</div>
							<div class="form-group">
							<label for="exampleInputPassword1">Số điện thoại</label>
								<sec:authorize access="isAuthenticated()">
									<div>
									<%
										String username = "";
										Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication().getPrincipal();
										if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
										  username = ((User)principal).getPhone();
										}
										out.write(username);
									%>
									</div>
								</sec:authorize>
							 	<sec:authorize access="!isAuthenticated()">
							 		<input type="text" name="customerPhone" placeholder="Nhập phone">
							 	</sec:authorize>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Địa chỉ giao hàng</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Địa chỉ giao hàng" name="customerAddress">
							</div>

							<button type="submit" class="btn btn-primary">Thanh toán</button>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 mb-12">
						<h1 class="my-4"></h1>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Tên sản phẩm</th>
									<th scope="col">Đơn giá</th>
									<th scope="col">Số lượng</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${GIO_HANG.cartItems}" var="item">

									<tr>
										<th scope="row">1</th>
										<td>${item.productName }</td>
										<td>${item.unitPrice }</td>
										<td>${item.quantity }</td>
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

	<!-- java script -->
	<jsp:include page="/WEB-INF/views/users/common/js.jsp"></jsp:include>

</body>

</html>
