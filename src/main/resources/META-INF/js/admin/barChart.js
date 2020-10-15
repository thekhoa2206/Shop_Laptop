
let myChart = document.getElementById('myChart').getContext('2d');


// Global Options1
Chart.defaults.global.defaultFontFamily = 'Lato';
Chart.defaults.global.defaultFontSize = 18;
Chart.defaults.global.defaultFontColor = '#777';

let massPopChart = new Chart(myChart, {
	type : 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
	data : {
		labels : [ '1', '2', '3', '4', '5', '6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31' ],
		datasets : [ {
			label : 'Total',
			data : data1,
			// backgroundColor:'green',
			backgroundColor : 'rgba(54, 162, 235, 0.6)' ,
			borderWidth : 1,
			borderColor : '#777',
			hoverBorderWidth : 3,
			hoverBorderColor : '#000'
		} ]
	},
	options : {
		title : {
			display : true,
			text : 'Thống kê doanh thu mỗi ngày theo tháng',
			fontSize : 25
		},
		legend : {
			display : true,
			position : 'right',
			labels : {
				fontColor : '#000'
			}
		},
		layout : {
			padding : {
				left : 50,
				right : 0,
				bottom : 0,
				top : 0
			}
		},
		tooltips : {
			enabled : true
		}
	}
});

