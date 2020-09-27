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
				<br> <span> <c:forEach var="product"
						items="${products }">
					${product.title }
				</c:forEach>
				</span>
			</div>
			<div class="main-top">
				<div class="left">
					<div class="slide-img">
						<a href="#"><img src="${base}/images/users/chitiet-1.jpg"
							id="place-img"></a>
					</div>
					<div class="choose-img">
						<img src="${base}/images/users/chitiet-1.jpg" id="img1"> <img
							src="${base}/images/users/chitiet-2.jpg" id="img2"> <img
							src="${base}/images/users/chitiet-3.jpg" id="img3"> <img
							src="${base}/images/users/chitiet-4.jpg" id="img4"> <img
							src="${base}/images/users/chitiet-5.jpg" id="img5">
					</div>
				</div>
				<div class="right">
					<div class="top">
						<br> <span class="span1"><c:forEach var="product"
								items="${products }">
					${product.price } Đ
				</c:forEach></span><br> <br> <span class="span2">Giá gốc:</span>
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
						<a href="#"><div>
								<span>THÊM VÀO GIỎ HÀNG</span>
							</div></a>
					</div>
				</div>
			</div>
			<div class="main-bot">
				<div class="info-detail">
					<div class="title">Thông tin chi tiết</div>
					<div class="content">
						<div class="left">
							<ul style="background: #c2c1c0; width: 180px;">
								<li>Tên</li>
								<li>CPU</li>
								<li>RAM</li>
								<li>Card đồ họa</li>
								<li>Ổ đĩa quang</li>
								<li>Kết nối</li>
								<li>Thời lượng pin</li>
								<li>Kích cỡ</li>
								<li>Trọng lượng</li>
							</ul>
						</div>
						<div class="right">
							<ul>
								<li>Asus ZenBook</li>
								<li style="background: #ebe9e9;">Intel, Core i5 Comet Lake</li>
								<li>8 GB, LPDDR3</li>
								<li style="background: #ebe9e9;">NVIDIA GeForce MX250, Card
									rời và tích hợp</li>
								<li>SSD, 512 GB</li>
								<li style="background: #ebe9e9;">Wifi chuẩn N, LAN
									10/100/1000, USB 2.0 và 3.0, VGA, HDMI, E-SATA, DisplayPort</li>
								<li>2 giờ</li>
								<li style="background: #ebe9e9;">14.0 inchs, 1920 x 1080
									Pixels</li>
								<li>2.3 kg</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="description">
					<div class="title">Mô tả chi tiết sản phẩm</div>
					<div class="content">
						<div style="margin-left: 20px; margin-right: 20px;">
							<c:forEach var="product" items="${products }">
								<span>${product.shortDetails }</span>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="comment">
					<div class="title">Nhận xét khách hàng</div>
					<div class="content">
						<div class="left">
							<br> <br>
							<ul>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
						<div class="right">
							<br> <br> <label>Tiêu đề nhận xét: </label><br> <input
								type="text" name=""
								placeholder="Nhập tiêu đề nhận xét(Không bắt buộc)"><br>
							<label>Viết Nhận xét của bạn vào bên dưới: </label><br>
							<textarea type="text"
								placeholder="Nhận xét của bạn về sản phẩm này"></textarea>
							<br> <input
								style="margin-top: 20px; width: 200px; height: 40px; background: #ed8c3e; margin-left: 150px;"
								type="submit" name="" value="Gửi nhận xét">
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
</body>
</html>