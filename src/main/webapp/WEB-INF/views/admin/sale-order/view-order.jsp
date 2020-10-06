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
<title>Tạo Sản Phẩm Mới</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">




<link href="${base}/css/users/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<div class="wrapper" style="background: white;">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/admin/common/Header.jsp"></jsp:include>
		<!-- /header -->
		<div class="content" style="display: flex;">
			<!-- menu -->
			<jsp:include page="/WEB-INF/views/admin/common/Menu.jsp"></jsp:include>
			<!-- /menu -->
			<div class="content">
				<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
					<div class="my-4">
						<div class="table-responsive" style="width: 1190px;">
							<table class="table table-striped table-sm">
								<thead>
									<tr>
										<th>STT</th>
										<th>Tên sản phẩm</th>
										<th>Giá tiền</th>
										<th>Số lượng</th>
									</tr>
								</thead>
								<tbody style="border: 1px solid #b5b5b5">
									<c:forEach items="${saleOrderProduct }" var="saleOrderProducts">
										<tr>
											<td>${saleOrderProducts.saleOrder.id}</td>
											<td>${saleOrderProducts.product.title }</td>
											<td>${saleOrderProducts.product.priceVN }</td>
											<td>${saleOrderProducts.quantity}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="${base}/css/users/bootstrap/js/jquery-3.5.1.min.js"></script>
	<script src="${base}/css/users/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${base}/js/admin/detele-product.js"></script>
</body>
</html>