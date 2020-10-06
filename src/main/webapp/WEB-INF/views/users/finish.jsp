<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
					<div class="col-lg-12 col-md-12 mb-12">cảm ơn quý khách!!!</div>
				</div>
				<!-- /.row -->
				<div class="col-lg-9">

					<div class="row">
						<h1 class="my-4">Xác nhận đơn hàng</h1>
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
									<c:forEach items="${cartItems}" var="item">

										<tr>
											<th scope="row">1</th>
											<td>${item.productName }</td>
											<td>${item.unitPrice }</td>
											<td>${item.quantity }</td>
										</tr>

									</c:forEach>
								</tbody>
								<tbody>

									<tr>
										<td>Tổng:</td>
										<td></td>
										<td>${sum1 }</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
					<!-- /.row -->
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Họ và tên</th>
								<th scope="col">Số điện thoại</th>
								<th scope="col">Địa chỉ</th>
							</tr>

						</thead>
						<tbody>
							<tr>
								<td>${customerName }</td>
								<td>${customerPhone }</td>
								<td>${customerAddress }</td>
							</tr>


						</tbody>
					</table>
				</div>
				<!-- /.col-lg-9 -->

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
