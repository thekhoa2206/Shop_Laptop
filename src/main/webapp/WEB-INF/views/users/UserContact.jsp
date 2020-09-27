<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />

<!-- SPRING FORM -->
<%@ taglib prefix="springform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" type="text/css"
	href="${base}/css/users/UserContact.css">
<script type="text/javascript" src="${base}/js/users/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${base}/js/users/script-contact.js"></script>
<script type="text/javascript" src="${base}/js/users/shop.js"></script>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<div class="contact">
				<div class="title">
					<span>Contact Us</span>
				</div>
				<c:if test="${ not empty message }">
					<div id="alert" role="alert"
						style="width: 400px; line-height: 40px; background: #cbe5fe; margin: auto; color: #3e618b; border-radius: 5px; text-align: center;">
						${message }</div>
				</c:if>

				<springform:form action="${base}/contact" method="post"
					modelAttribute="contact">
					<br>
					<div class="content">
						<label for="fname">First Name:</label><br>
						<springform:input path="firstName" id="fname" />
						<br> <label for="lname">Last Name:</label><br>
						<springform:input path="lastName" id="lname" />
						<br> <label for="email">Email Address:</label><br>
						<springform:input path="email" id="email" />
						<br> <label for="subject">Subject:</label><br>
						<springform:textarea path="subject" id="subject" />
						<br> <input type="button"
							style="background: #ff9007; width: 100px; border-radius: 5px; border: 0px; margin-left: 360px;"
							name="" value="Submit" onclick="Shop.saveContact()">
					</div>
				</springform:form>
			</div>
		</div>
		<!-- /main -->
		<!-- footer -->
		<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /wrapper -->
</body>
</html>
