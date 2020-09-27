<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />


<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="${base}/css/users/UserSignUp.css">
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
			<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->
		<div class="main">
			<!-- top -->
			<div class="top">
				<div class="left"><span>Tạo tài khoản</span></div>
				<div class="right"><span>Bạn là thành viên? <a href="#">Đăng nhập</a> tại đây</span></div>
			</div>
			<!-- /top -->
			<!-- mid -->
			<div class="mid">
				<div class="top">
					<div class="left">

						<span>Họ và Tên*</span><br>
						<input type="text" name="" placeholder="Nhập Họ và tên của bạn"><br>

						<span>Số điện thoại*</span><br>
						<input type="text" name="" placeholder="Nhập số điện thoại của bạn"><br>

						<span>Địa chỉ*</span><br>
						<input type="text" name="" placeholder="Nhập địa chỉ nơi nhận hàng">
					</div>
					<div class="right">
						<span>Email*</span><br>
						<input type="text" name="" placeholder="Nhập Email"><br>

						<span>Mật khẩu*</span><br>
						<input type="password" name="gender" placeholder="Nhập khẩu từ 6 đến 32 kí tự"><br>
						<span>Giới Tính:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="gender" id="radio-1" value="nam" >&nbsp;&nbsp;Nam
							<input type="radio" name="gender" id="radio-2" value="nu">&nbsp;&nbsp;Nữ
							<br>
						</span>
						<span>Ngày sinh:</span>
						<select>
							<option>Ngày</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select>
							<option>Tháng</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select>Ngày
							<option>Năm</option>
							<option>1980</option>
							<option>1981</option>
							<option>1982</option>
							<option>1983</option>
							<option>1984</option>
							<option>1985</option>
							<option>1986</option>
							<option>1987</option>
							<option>1988</option>
							<option>1989</option>
							<option>1990</option>
							<option>1991</option>
							<option>1992</option>
							<option>1993</option>
							<option>1994</option>
							<option>1995</option>
							<option>1996</option>
							<option>1997</option>
							<option>1998</option>
							<option>1999</option>
							<option>2000</option>
							<option>2001</option>
							<option>2002</option>
							<option>2003</option>
							<option>2004</option>
							<option>2005</option>
							<option>2006</option>
							<option>2007</option>
							<option>2008</option>
							<option>2009</option>
							<option>2010</option>
							<option>2011</option>
							<option>2012</option>
							<option>2013</option>
							<option>2014</option>
							<option>2015</option>
							<option>2016</option>
							<option>2017</option>
							<option>2018</option>
							<option>2019</option>
							<option>2020</option>
						</select>
					</div>
				</div>
				<div class="mid"></div>
				<div class="bot">
					<input type="checkbox" name=""> Nhận các thông tin và chương trình khuyến mãi qua email.<br>

					<a href="#"><button>Tạo Tài Khoản</button></a><br>

					<p>Khi bạn nhấn Đăng ký, bạn đã đồng ý thực hiện mọi giao dịch mua bán theo <a href="#">điều kiện sử dụng và chính sách</a> của chúng tôi.</p>
				</div>
			</div>
			<!-- /mid -->
		</div>
		<!-- /main -->
		<!-- footer -->
			<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /wrapper -->
</body>
</html>
