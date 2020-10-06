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
					<h2>Danh sách sản phẩm</h2>
					<div class="my-4">
						<a href="${base }/admin/add-product"
							class="btn btn-primary btn-sm">Thêm mới sản phẩm</a>
						<div class="table-responsive" style="width: 1190px;">
							<table class="table table-striped table-sm">
								<thead>
									<tr>
										<th>ID</th>
										<th>Mã đơn hàng</th>
										<th>Tên khách hàng</th>
										<th>Địa chỉ</th>
										<th>Số điện thoại</th>
										<th>Tổng tiền</th>
										<th>Status</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody style="border: 1px solid #b5b5b5">
									<c:forEach items="${saleOrders }" var="saleOrder">
										<tr>
											<td>${saleOrder.id}</td>
											<td>${saleOrder.code }</td>
											<td>${saleOrder.customerName }</td>
											<td>${saleOrder.customerAddress }</td>
											<td>${saleOrder.customerPhone }</td>
											<td>${saleOrder.totalVN }</td>
											<td><c:choose>
													<c:when test="${saleOrder.status =='true'}">
														<span
															style="background: #29ed3b; border-radius: 5px; color: white;">&nbsp;Chưa
															hoàn thành&nbsp;</span>
													</c:when>
													<c:otherwise>
														<span
															style="background: #c12731; border-radius: 5px; color: white;">&nbsp;Đã
															hoàn thành&nbsp;</span>
													</c:otherwise>
												</c:choose></td>
											<td><a href="${base }/admin/view-order/${saleOrder.id}" class="btn btn-primary btn-sm"><svg
														width="2em" height="2em" viewBox="0 0 16 16"
														class="bi bi-pencil-square" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg">
								<path
															d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
								<path fill-rule="evenodd"
															d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
								</svg></a></td>
											<td><button type="button" id="delete" name="" onclick="confirmDelete('${saleOrder.id }')"
													class="btn btn-danger btn-sm">
													<svg width="2em" height="2em" viewBox="0 0 16 16"
														class="bi bi-trash" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg">
  <path
															d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
  <path fill-rule="evenodd"
															d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
</svg>
												</button></td>
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
	<script type="text/javascript" src="${base}/js/admin/delete-saleOrder.js"></script>
</body>
</html>