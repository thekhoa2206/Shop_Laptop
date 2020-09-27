setInterval(function() {
	// khởi tạo đối tượng thời gian
	var date = new Date();
	// lấy thông tin ngày, tháng , năm, giờ, phút , giây
	var ngay = date.getDate();
	var thang = date.getMonth() +1;
	var nam = date.getFullYear();
	var gio = date.getHours();
	var phut = date.getMinutes();
	var giay = date.getSeconds();
	// --------------
	var strNgayTrongTuan = "";
	dayOfWeek = date.getDay();
	switch (dayOfWeek) {
	case 0:
		strNgayTrongTuan = "Chủ Nhật";
		break;
	case 1:
		strNgayTrongTuan = "Thứ Hai";
		break;
	case 2:
		strNgayTrongTuan = "Thứ Ba";
		break;
	case 3:
		strNgayTrongTuan = "Thứ Tư";
		break;
	case 4:
		strNgayTrongTuan = "Thứ Năm";
		break;
	case 5:
		strNgayTrongTuan = "Thứ Sáu";
		break;
	case 6:
		strNgayTrongTuan = "Thứ Bảy";
		break;
	}
	// --------------
	strAMPM = "";
	if (gio <= 12)
		strAMPM = "AM";
	else
		strAMPM = "PM";
	// --------------
	// tạo biến thời gian
	var strTime = strNgayTrongTuan + " , " + ngay + "/" + thang + "/" + nam
			+ " " + gio + ":" + phut + ":" + giay + " " + strAMPM;
	document.getElementById("time").innerHTML = strTime;
}, 1000);