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
					<div class="my-4" id="print_div">
						<h2 style="text-align: center;">
							Thông tin đơn hàng <span style="color: red;">${saleOrder.code }</span>
						</h2>
						<div class="table-responsive"
							style="width: 1150px; margin-top: 20px;">

							<h3>Thông tin khách hàng</h3>
							<table class="table" style="width: 400px;">
								<tr style="width: 400px;">
									<th>Họ và tên:</th>
									<td>${saleOrder.customerName }</td>
								</tr>
								<tr style="width: 400px;">
									<th>Số điện thoại:</th>
									<td>${saleOrder.customerPhone }</td>
								</tr>
								<tr style="width: 400px;">
									<th>Email:</th>
									<td>${saleOrder.customerEmail }</td>
								</tr>
								<tr style="width: 400px;">
									<th>Địa chỉ:</th>
									<td>${saleOrder.customerAddress }</td>
								</tr>
							</table>
							<div style="border-bottom: 5px dashed blue;"></div>
							<h3>Danh sách sản phẩm</h3>
							<table class="table table-striped table-sm">
								<thead>
									<tr>
										<th>Id</th>
										<th>Tên sản phẩm</th>
										<th>Giá tiền</th>
										<th>Số lượng</th>
									</tr>
								</thead>
								<tbody style="border: 1px solid #b5b5b5">
									<c:forEach items="${saleOrderProduct }" var="saleOrderProducts">
										<tr>
											<td>${saleOrderProducts.id}</td>
											<td>${saleOrderProducts.product.title }</td>
											<td>${saleOrderProducts.product.priceVN }</td>
											<td>${saleOrderProducts.quantity}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<table style="float: right; width: 200px;">
								<tr>
									<th style="border-bottom: 1px solid red; padding-bottom: 10px;">Tổng:
									</th>
									<td
										style="color: red; border-bottom: 1px solid red; padding-bottom: 10px;">${saleOrder.totalVN }</td>
								</tr>
							</table>

						</div>

					</div>
					<c:choose>
						<c:when test="${saleOrder.status =='true'}">
							<button type="button" name=""
								onclick="confirmDelete('${saleOrder.id }')"
								class="btn btn-primary btn-sm"
								style="margin-left: 500px; margin-top: 50px;">Hoàn
								Thành</button>
						</c:when>
						<c:otherwise>
							<button type="button" name="" class="btn btn-danger btn-sm"
								style="margin-left: 500px; margin-top: 50px;">Đã Hoàn
								Thành</button>
						</c:otherwise>
					</c:choose>
					<a href="${base }/admin/list-order"><button type="button"
							name="" class="btn btn-primary btn-sm" style="margin-top: 50px;">Thoát</button></a>
					<button type="button" name="" class="btn btn-primary btn-sm"
						style="margin-top: 50px;" onclick="printdiv('print_div')">Print</button>
				</main>
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="${base}/css/users/bootstrap/js/jquery-3.5.1.min.js"></script>
	<script src="${base}/css/users/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${base}/js/admin/delete-saleOrder.js"></script>
	<script type="text/javascript">
		function printdiv(printpage) {
			var headstr = "<html><head><title></title></head><body>";
			var footstr = "</body>";
			var newstr = document.all.item(printpage).innerHTML;
			var oldstr = document.body.innerHTML;
			document.body.innerHTML = headstr + newstr + footstr;
			window.print();
			document.body.innerHTML = oldstr;
			return false;
		}
	</script>
</body>
</html>