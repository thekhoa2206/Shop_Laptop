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
<script src="${base}/css/users/bootstrap/js/jquery-3.5.1.min.js"></script>
<script src="${base}/css/users/bootstrap/js/bootstrap.min.js"></script>

<link href="${base}/summernote/summernote.min.css" rel="stylesheet">
<script src="${base}/summernote/summernote.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="${base}/css/admin/add-product.css">
</head>
<body>
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/admin/common/Header.jsp"></jsp:include>
		<!-- /header -->
		<!-- content -->
		<div class="content">
			<!-- menu -->
			<jsp:include page="/WEB-INF/views/admin/common/Menu.jsp"></jsp:include>
			<!-- /menu -->
			<!-- content-right -->
			<div class="content-right">
				<div class="create-product">
					<div class="title">
						<span>Tạo category</span>
					</div>
					<div class="content-create-product">
						<form:form method="post" action="/admin/save-category"
							modelAttribute="category" enctype="multipart/form-data">

							<form:hidden path="id" />

							<div class="form-group" style="width: 970px; margin-left: 15px;">
								<label for="inputAddress">Tên Category</label>
								<form:input type="text" class="form-control" path="name"
									placeholder="Nhập tên category" />
							</div>
							<div class="form-group" style="width: 970px; margin-left: 15px;">
								<label for="inputAddress">Description</label>
								<form:input type="text" class="form-control" path="description"
									placeholder="Mô tả chi tiết về category" />
							</div>
							<br>
							<label>Status</label>
							<form:checkbox path="status" style="margin:0px; width:15px; height:15px; margin-left:20px;"/>
							<br><br><br>
							<button type="submit" value="Lưu" class="btn btn-primary btn-sm"
								style="width:200px; line-height: 28px; margin-left: 260px; margin-bottom:50px;">Lưu</button>
							<a href="${base }/admin/list-category"
							class="btn btn-primary btn-sm" style="width:200px; line-height: 28px; margin-left:20px;margin-bottom:50px;">Quay lại</a>
						</form:form>
					</div>
				</div>
			</div>
			<!-- /content-right -->
		</div>
		<!-- /content -->
	</div>
</body>
</html>