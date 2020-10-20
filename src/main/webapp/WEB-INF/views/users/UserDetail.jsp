<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:url value="${pageContext.request.contextPath}" var="base" />
<!DOCTYPE html>
<html>
<head>
<title>Chi tiết sản phẩm</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" type="text/css"
	href="${base}/css/users/UserDetail.css">
<link rel="stylesheet" type="text/css"
	href="${base}/css/users/responsive.css">
<script type="text/javascript" src="${base}/js/users/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${base}/js/users/UserDetail.js"></script>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<div class="title">
				<br> <span> ${product.title } </span>
			</div>
			<div class="main-top">
				<div class="left">
					<div class="slide-img">
						<a href="#"><img
							src="${base}/file/upload/${product.productImages[0].path}"
							id="place-img"></a>
					</div>
					<div class="choose-img">
						<img src="${base}/file/upload/${product.productImages[0].path}"
							id="img1"> <img
							src="${base}/file/upload/${product.productImages[1].path}"
							id="img2"> <img
							src="${base}/file/upload/${product.productImages[2].path}"
							id="img3"> <img
							src="${base}/file/upload/${product.productImages[3].path}"
							id="img4"> <img
							src="${base}/file/upload/${product.productImages[4].path}"
							id="img5">
					</div>
				</div>
				<div class="right">
					<div class="top">
						<br> <span class="span1"> ${product.priceVN } </span><br>
						<br> <span class="span2">Giá gốc:</span>
						<del>30.990.000đ</del>
						<br> <br> <br> <span class="span3">CPU:</span><span
							class="span4">Intel, Core i5 Comet Lake</span><br> <br>
						<span class="span3">RAM:</span><span class="span4">8 GB,
							LPDDR3</span><br> <br> <span class="span3">Ổ cứng:</span><span
							class="span4">SSD, 512 GB</span><br> <br> <span
							class="span3">Card đồ họa:</span><span class="span4">NVIDIA
							GeForce MX250, Card rời và tích hợp</span><br> <br> <span
							class="span3">Màn hình:</span><span class="span4">14.0
							inchs, 1920 x 1080 Pixels</span><br> <br> <br> <br>
						<span>Bảo hành chính hãng Lenovo Việt Nam 12 tháng</span><br>
						<span>Giá ở trên đã bao gồm 10% VAT</span><br> <span>MIỄN
							PHÍ GIAO HÀNG toàn địa bàn Hà Nội</span><br>
					</div>
					<div class="bottom">
						<button type="button"
							onclick="Shop.addItemToCart(${product.id}, 1)">
							<span>THÊM VÀO GIỎ HÀNG</span>
						</button>
					</div>
				</div>
			</div>
			<div class="main-bot">
				<div class="description">
					<div class="title">Mô tả chi tiết sản phẩm</div>
					<div class="content">
						<div style="margin-left: 20px; margin-right: 20px;">

							<span>${product.shortDetails }</span>

						</div>
					</div>
				</div>
				<div class="comment">
					<div class="title">Nhận xét khách hàng</div>
					<div class="content">
						<div id="fb-root"></div>
						<script async defer crossorigin="anonymous"
							src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0"
							nonce="1L3hNQ0b"></script>

						<div id="comment_fb">
							<div class="fb-comments"
								data-href="http://localhost:8888/detail-product/${product.seo }"
								data-numposts="5" data-width="1000"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /main -->

		<!-- footer -->
		<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- wrapper -->

	<!-- js  -->
	<script type="text/javascript" src="${base}/js/users/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="${base}/js/users/script.js"></script>
	<script type="text/javascript" src="${base}/js/users/shop.js"></script>
</body>
</html>