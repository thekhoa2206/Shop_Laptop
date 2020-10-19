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
<link href="${base}/css/users/history.css" rel="stylesheet">

</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<div class="inner">
				<table>
					<thead>
						<tr>
							<th>Mã đơn hàng</th>
							<th>Ngày đặt</th>
							<th>Tổng tiền</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="saleOrder" items="${saleOrders }">
							<tr>
								<td><a href="/order/view/${saleOrder.code }">${saleOrder.code }</a></td>
								<td>${saleOrder.createdDate }</td>
								<td>${saleOrder.totalVN }</td>
							</tr>
						</c:forEach>
					</tbody>
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
