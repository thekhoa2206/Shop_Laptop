<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:url value="${pageContext.request.contextPath}" var="base" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
<title>Thống kê doanh thu</title>
</head>
<body>
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/admin/common/Header.jsp"></jsp:include>
		<!-- /header -->
		<div class="content" style="display: flex;">
			<!-- menu -->
			<jsp:include page="/WEB-INF/views/admin/common/Menu.jsp"></jsp:include>
			<!-- /menu -->
			<div class="content">
				<div class="quantity" style="width: 1100px; line-height:50px; margin:auto; border:1px solid red;margin-top:20px;margin-bottom:20px; display: flex; text-align: center;border-radius: 5px; background: #ffffff;">
					<div style="width: 550px; border-right:1px solid red; font-size:18px; color:red;">
						<span>Số lượng sp đã bán trong năm:</span>
						<span>${quantity }</span>
					</div>
					<div style="width: 550px;font-size:18px;color:red;">
						<span>Tổng doanh thu trong năm:</span>
						<span>${sum }</span>
					</div>
				</div>
				<div class="container">

					<div id="container"
						style="width: 1200px; height: 600px; margin: 0 auto"></div>
				</div>

			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script type="text/javascript">
    $(function(){
    	var categorie = ${saleOrder.keySet()}; 
    	var data1 = ${saleOrder.values()};
    Highcharts.chart('container', {
        chart: {
            type: 'column'
        },
        title: {
            text: 'Thống kê doanh thu theo từng tháng'
        },
      
        xAxis: {
            categories: categorie,
            crosshair: true
        },
        yAxis: {
            min: 0,
            max:100000000,
            title: {
                text: 'VND'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} K</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Tháng',
            data: data1
        }]

    });
    });
</script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>

</body>
</html>
