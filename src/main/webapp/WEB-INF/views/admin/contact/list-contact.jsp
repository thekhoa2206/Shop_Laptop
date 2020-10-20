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
<script type="text/javascript" src="${base}/js/admin/detele-product.js"></script>

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
					<h2>Danh sách liên hệ</h2>
					<div class="my-4">
						<div class="table-responsive" style="width: 1190px;">
							<table class="table table-striped table-sm">
								<thead>
									<tr>
										<th>Name</th>
										<th>Email</th>
										<th>Subject</th>
										<th>Status</th>
										<th></th>
									</tr>
								</thead>
								<tbody style="border: 1px solid #b5b5b5">
									<c:forEach items="${contacts }" var="contact">
										<tr>
											<td>${contact.firstName }&nbsp;${contact.lastName }</td>
											<td>${contact.email }</td>
											<td>${contact.subject }</td>
											<td><c:choose>
													<c:when test="${contact.status =='true'}">
														<span
															style="background: #29ed3b; border-radius: 5px; color: white;">&nbsp;Active&nbsp;</span>
													</c:when>
													<c:otherwise>
														<span
															style="background: #c12731; border-radius: 5px; color: white;">&nbsp;Inactive&nbsp;</span>
													</c:otherwise>
												</c:choose></td>
											<td><button type="button" id="delete" name=""
													onclick="confirmDelete('${contact.id }')"
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
</body>
</html>