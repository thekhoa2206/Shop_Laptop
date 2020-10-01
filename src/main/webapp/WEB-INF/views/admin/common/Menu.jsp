<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />

<link rel="stylesheet" type="text/css"
	href="${base}/css/admin/common/Menu.css">

<div class="menu">
	<ul>
		<li class="title">
			<div>
				<img src="${base}/images/admin/avt.jpg">
			</div>
			<div>
				<span>&nbsp;wellcome,&nbsp;&nbsp;</span> <a href="#">Admin</a>
			</div>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-house" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd"
							d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
								<path fill-rule="evenodd"
							d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
								</svg></li>
				<li><a href="/admin/home">Home</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-pencil-square" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path
							d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
								<path fill-rule="evenodd"
							d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
								</svg></li>
				<li><a href="/admin/list-product">Quản lý sản phẩm</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-pencil-square" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path
							d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
								<path fill-rule="evenodd"
							d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
								</svg></li>
				<li><a href="/admin/list-user">Quản lý người dùng</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-pencil-square" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path
							d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
								<path fill-rule="evenodd"
							d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
								</svg></li>
				<li><a href="/admin/list-category">Quản lý category</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-pencil-square" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path
							d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
								<path fill-rule="evenodd"
							d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
								</svg></li>
				<li><a href="/admin/list-product">Quản lý bình luận</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-pencil-square" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path
							d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
								<path fill-rule="evenodd"
							d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
								</svg></li>
				<li><a href="/admin/list-product">Quản lý đơn hàng</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-graph-up" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path d="M0 0h1v16H0V0zm1 15h15v1H1v-1z" />
								<path fill-rule="evenodd"
							d="M14.39 4.312L10.041 9.75 7 6.707l-3.646 3.647-.708-.708L7 5.293 9.959 8.25l3.65-4.563.781.624z" />
								<path fill-rule="evenodd"
							d="M10 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V4h-3.5a.5.5 0 0 1-.5-.5z" />
								</svg></li>
				<li><a href="#">Thống kê</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-person" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd"
							d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
								</svg></li>
				<li><a href="#">Tài khoản</a></li>
			</ul>
		</li>
		<li class="menu-1">
			<ul>
				<li><svg width="2em" height="2em" viewBox="0 0 16 16"
						class="bi bi-person" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd"
							d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
								</svg></li>
				<li><a href="#">Đăng xuất</a></li>
			</ul>
		</li>
	</ul>
</div>