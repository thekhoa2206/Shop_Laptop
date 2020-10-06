function confirmDelete(id) {
	var del = confirm("Bạn đã hoàn thành đơn hàng này?");
	if (del == true) {
		SaleOrder.deleteSaleOrder(id);
	} else {

	}
}
var SaleOrder = {
	deleteSaleOrder : function(id) {
		var data = {};
		$.ajax({
			url : "/admin/list-order/delete-saleOrder-with-ajax/" + id,
			type : "post",
			contentType : "application/json", // dữ liệu gửi lên web-service
			// có dạng là json.
			data : JSON.stringify(data), // object json -> string json

			dataType : "json", // dữ liệu từ web-service trả về là json.
			success : function(jsonResult) { // được gọi khi web-service trả
				// về dữ liệu.

				if (jsonResult.status == 200) {
					alert('thành công');
					location.reload(true);
				} else {
					alert('Lỗi');
				}
			},
			error : function(jqXhr, textStatus, errorMessage) { // error
				// callback

			}
		});
	}
}
