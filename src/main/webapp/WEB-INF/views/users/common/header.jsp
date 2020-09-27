<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />

<link rel="stylesheet" type="text/css" href="${base}/css/users/Header.css">
<!-- header -->
		<div class="header">
			<!-- toolbar -->
			<div class="toolbar">
				<ul>
					<li><a href="${base}/signin">Đăng nhập</a></li>
					<li><a href="${base}/signup">Đăng ký</a></li>
					<li><a href="${base}/contact">Liên hệ</a></li>
				</ul>
			</div>
			<!-- /toolbar -->
			<!-- content -->
			<div class="content">
				<div class="left"><img src="images/users/logo.jpg"></div>
				<div class="middle">
					<ul>
						<li><input type="text" style="padding-left:8px;" class=""placeholder="Nhập tên điện thoại, laptop, phụ kiện... cần tìm"></li>
					</ul>
				</div>
				<div class="right">
					<a href="#">
						<svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-bell" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
						<path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z"/>
						<path fill-rule="evenodd" d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
						</svg>
					</a>
					<a href="${base}/cart">
						<svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-cart3" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
						</svg>
					</a>
				</div>
			</div>
			<!-- /content -->
			<!-- menu -->
			<div id="menu">
				<ul>
					<li><a href="${base}/#">TRANG CHỦ</a></li>
					<li><a href="#">LAPTOP</a></li>
					<li><a href="#">PHỤ KIỆN</a></li>
					<li><a href="#">KHUYẾN MÃI</a></li>
					<li><a href="#">TRẢ GÓP</a></li>
					<li><a href="#">TRỢ GIÚP</a></li>
				</ul>
			</div>
			<div class="menu-1">
				<ul>
					<li><a href="${base}/#">TRANG CHỦ</a></li>
					<li><a href="#">LAPTOP</a></li>
					<li><a href="#">PHỤ KIỆN</a></li>
					<li><a href="#">KHUYẾN MÃI</a></li>
					<li><a href="#">TRẢ GÓP</a></li>
					<li><a href="#">TRỢ GIÚP</a></li>
				</ul>
			<!-- /menu -->
		</div>
		<!-- /header -->