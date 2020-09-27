<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />


<!DOCTYPE html>
<html>
<head>
<title>Giỏ Hàng</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">

<link rel="stylesheet" type="text/css"
	href="${base}/css/users/UserCart.css">
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<!-- title -->
			<div class="title">
				<span>&nbsp;&nbsp;&nbsp;GIỎ HÀNG(0 sản phẩm)</span>
			</div>
			<!-- /title -->
			<!-- content -->
			<div class="content">
				<!-- left -->
				<div class="left">
					<div class="avt">
						<img src="${base}/images/users/chitiet-1.jpg">
					</div>
					<div class="content">
						<div class="info-left">
							<a href="#" style="font-size: 18px;">[Mới 100% Full Box]
								Laptop Acer Aspire 7 A715-41G-R8KQ - AMD Ryzen 5</a><br> <br>
							<br> <a href="#" class="dele">Xóa sản phẩm</a>
						</div>
						<div class="info-right">
							<div class="price">
								<span>1.999.999 đ</span>
							</div>
							<div class="num-product">
								<span>-</span> <input type="" name="" value="1"> <span>+</span>
							</div>
						</div>
					</div>
				</div>
				<!-- /left -->
				<!-- right -->
				<div class="right">
					<div class="title">
						<span>Thông tin đơn hàng</span>
					</div>
					<div class="content">
						<br> <span>Tạm tính(0 sản
							phẩm):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0đ</span><br> <br> <span>Phí
							giao hàng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0đ</span><br> <br>
						<p>Tổng Cộng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0đ</p>
						<input type="submit" name="" value="Xác nhận giỏ hàng">
					</div>
				</div>
				<!-- /right -->
			</div>
			<!-- /content -->
		</div>
		<!-- /main -->
		<!-- footer -->
		<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /wrapper -->
</body>
</html>