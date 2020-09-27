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
						<span>Tạo Sản Phẩm Mới</span>
					</div>
					<div class="content-create-product">
						<form:form method="post" action="/admin/save-product"
							modelAttribute="product" enctype="multipart/form-data">

							<form:hidden path="id" />

							<label>Tên sản phẩm</label>
							<br>
							<form:input type="text" path="title" />
							<br>
							<label>Giá sản phẩm</label>
							<br>
							<form:input type="text" path="price" />
							<br>
							<label>Mô tả sản phẩm(tối 3000 chữ)</label>
							<br>
							<form:textarea id="txtshortDescription1" path="shortDes" />
							<br>
							<br>
							<label>Mô tả chi tiết</label>
							<br>
							<div style="width: 500px; margin-left: 250px;">
								<form:textarea id="txtDetailDescription" path="shortDetails" />
							</div>
							<div class="form-group">
								<label>Category</label><br>
								<form:select path="category.id"
									style="width: 500px; height: 40px; margin-left: 250px;	border-radius: 5px; border: 1px solid #dcdbdb;">
									<form:options items="${categories}" itemValue="id"
										itemLabel="name" style="height: 40px;" />
								</form:select>
							</div>
							<br>
							<label>Ảnh của sản phẩm</label>
							<input type="file" name="images" multiple="multiple"
								style="border: 0px solid #dcdbdb;">
							<br>
							<label>Status</label>
							<form:checkbox path="status" style="margin:0px; width:15px; height:15px; margin-left:20px;"/>
							<br><br><br>
							<button type="submit" value="Lưu Sản Phẩm" class="btn btn-primary btn-sm"
								style="width:200px; line-height: 28px; margin-left: 260px; margin-bottom:50px;">Save</button>
							<a href="${base }/admin/list-product"
							class="btn btn-primary btn-sm" style="width:200px; line-height: 28px; margin-left:20px;margin-bottom:50px;">Quay lại</a>
						</form:form>
					</div>
				</div>
			</div>
			<!-- /content-right -->
		</div>
		<!-- /content -->
	</div>
	<script>
		$(document).ready(function() {
			$('#txtDetailDescription').summernote();
		});
	</script>
</body>
</html>