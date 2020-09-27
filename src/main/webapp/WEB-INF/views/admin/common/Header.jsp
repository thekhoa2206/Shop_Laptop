<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />


<link rel="stylesheet" type="text/css"
	href="${base}/css/admin/common/Header.css">
<script type="text/javascript" src="${base}/js/admin/header.js"></script>

<div class="toolbar">
	<div class="left">Admin</div>
	<div class="right">
		<div class="search" style="margin-top: 15px;">
			<input type="" name="" placeholder="Search...">
		</div>
		<div class="content">
			<fieldset>
				<span id="time"></span>
			</fieldset>
		</div>
	</div>
</div>