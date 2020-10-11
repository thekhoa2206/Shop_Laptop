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
	href="${base}/css/admin/add-user.css">
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
						<span>User</span>
					</div>
					<div class="content-create-product">
						<form:form method="post" action="/admin/save-user"
							modelAttribute="user" enctype="multipart/form-data">

							<form:hidden path="id" />
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Tên đăng nhập</label>
									<form:input type="text" class="form-control" path="username"
										placeholder="Nhập tên đăng nhập của bạn" />
								</div>
								<div class="form-group col-md-6">
									<label>Họ và tên đệm</label>
									<form:input type="text" class="form-control" path="firstName"
										placeholder="Nhập họ và tên đệm của bạn" />
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Mật khẩu</label>
									<form:input type="password" class="form-control"
										path="password" placeholder="Nhập mật khẩu của bạn" />
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Tên</label>
									<form:input type="text" class="form-control" path="name"
										placeholder="Nhập tên của bạn" />
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Email</label>
									<form:input type="email" class="form-control" path="email"
										placeholder="nguyenvana@gmail.com" />
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Số điện thoại</label>
									<form:input type="text" class="form-control" path="phone"
										placeholder="Nhập số điện thoại của bạn" />
								</div>
							</div>
							<div class="form-group" style="width: 970px; margin-left: 15px;">
								<label for="inputAddress">Address</label>
								<form:input type="text" class="form-control" path="address"
									placeholder="1234 Main St" />
							</div>
							<div class="form-check" style="margin-left: 20px;">
								<form:radiobutton path="gender" class="form-check-input"
									value="true" />
								<label class="form-check-label"> Nam </label>
								<form:radiobutton path="gender" class="form-check-input"
									value="false" />
								<label class="form-check-label"> Nữ </label>
							</div>
							<div class="form-group" style="margin-left: 20px;">
								<label>Chọn quyền</label><br>

								<form:checkbox path="roles" class="form-check-input"
									value="1" />
								<label class="form-check-label"> admin </label>
								<form:checkbox path="roles" class="form-check-input"
									value="2" />
								<label class="form-check-label"> Khách hàng </label>
								<form:checkbox path="roles" class="form-check-input"
									value="3" />
								<label class="form-check-label"> Nhân viên </label> 
								
								<%-- <c:forEach items="${role}" var="rolez">
									<form:radiobutton path="roles" class="form-check-input"
										value="${rolez.id }" />
									<label class="form-check-label"> ${rolez.description }</label>

								</c:forEach> --%>
							</div>
							<div style="margin-left: 20px;">
								<label>Ảnh của người dùng</label> <input type="file"
									name="images" style="border: 0px solid #dcdbdb;">
							</div>
							<br>
							<div style="margin-left: 20px;">
								<label>Status</label>
								<form:checkbox path="status"
									style="margin:0px; width:15px; height:15px; margin-left:20px;" />
							</div>
							<br>
							<br>
							<br>
							<button type="submit" value="Lưu" class="btn btn-primary btn-sm"
								style="width: 200px; line-height: 28px; margin-left: 260px; margin-bottom: 50px;">Lưu</button>
							<a href="${base }/admin/list-user" class="btn btn-primary btn-sm"
								style="width: 200px; line-height: 28px; margin-left: 20px; margin-bottom: 50px;">Quay
								lại</a>
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