function confirmDelete(seo) {
	var del = confirm("Bạn có muốn xóa sản phẩm này không?");
	if (del == true) {
		Product.deleteProduct(seo);
	} else {

	}
}
var Product = {
	deleteProduct : function(seo) {
		var data = {};
		// alert(seo);
		data["seo"] = seo;
		$.ajax({
			url : "/admin/list-product/delete-product-with-ajax/" + seo,
			type : "post",
			contentType : "application/json", // dữ liệu gửi lên web-service
			// có dạng là json.
			data : JSON.stringify(data), // object json -> string json

			dataType : "json", // dữ liệu từ web-service trả về là json.
			success : function(jsonResult) { // được gọi khi web-service trả
												// về dữ liệu.

				// alert(jsonResult.data.seo);
				// alert(jsonResult.data.status);
				// alert(jsonResult.message);
				// $("#message").html(jsonResult.data);
				// $('#blogModal').modal('show');
				if (jsonResult.status == 401) {
					alert('Xóa thành công');
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
