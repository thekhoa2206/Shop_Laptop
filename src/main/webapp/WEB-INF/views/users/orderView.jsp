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

<link href="${base}/css/users/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${base}/css/users/orderView.css" rel="stylesheet">

</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<span style="font-size: 18px;">Chi tiết đơn hàng
				${saleOrders.code }</span>
			<div class="info-user">
				<div class="info-1">
					<div class="title">
						<span>ĐỊA CHỈ NGƯỜI NHẬN</span>
					</div>
					<div class="content">
						<br> <span style="font-size: 18px; font-weight: bold;">${saleOrders.customerName }</span><br>
						<span>Địa chỉ: ${saleOrders.customerAddress }</span><br> <span>Số
							điện thoại: ${saleOrders.customerPhone }</span>
					</div>
				</div>
				<div class="info-2">
					<div class="title">
						<span>HÌNH THỨC THANH TOÁN</span>
					</div>
					<div class="content">
						<br> <span>Thanh toán tiền mặt khi nhận hàng</span>
					</div>
				</div>
			</div>
			<div class="info-order">
				<table>
					<thead>
						<tr>
							<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sản phẩm</th>
							<th>Giá</th>
							<th>Giảm Giá</th>
							<th>Số lượng</th>
							<th>Tạm tính</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="saleOrderProduct" items="${saleOrderProducts }">
							<tr>
								<td><img alt=""
									src="${base}/file/upload/${saleOrderProduct.product.productImages[0].path}"><span><a
										href="${base}/detail-product/${saleOrderProduct.product.seo }">${saleOrderProduct.product.title }</a></span></td>
								<td>${saleOrderProduct.product.priceVN }</td>
								<td>0 đ</td>
								<td>${saleOrderProduct.quantity }</td>
								<td>${saleOrderProduct.product.priceVN }</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<table>
					<tfoot>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><p>Tạm tính</p></td>
							<td><p>${saleOrders.totalVN }</p></td>
						</tr>

						<tr>
							<td><p>Giảm giá</p></td>
							<td><p>0 ₫</p></td>
						</tr>
						<tr>
							<td><p>Phí vận chuyển</p></td>
							<td><p>
									0 ₫</span></td>
						</tr>
						<tr>
							<td><p>Tổng cộng</p></td>
							<td><p class="sum">${saleOrders.totalVN }</p></td>
						</tr>
					</tfoot>
				</table>

			</div>
		</div>
		<!-- /main -->
		<!-- footer -->
		<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /wrapper -->

	<!-- js  -->
	<script src="${base}/css/users/bootstrap/js/jquery-3.5.1.min.js"></script>
	<script src="${base}/css/users/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
