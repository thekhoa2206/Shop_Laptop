<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />

<link rel="stylesheet" type="text/css" href="${base}/css/users/Menu.css">

<div class="menu">
	<div class="title">Danh Mục Sản Phẩm</div>
	<div class="content">
		<c:forEach var="category" items="${categories }">
			<ul>
				<li><a href="${base }/product/category/${category.seo}">${category.name }</a></li>
			</ul>
		</c:forEach>
	</div>
</div>