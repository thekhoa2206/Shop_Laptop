function confirmDelete(id) {
	var del = confirm("Bạn có muốn xóa người dùng này không?");
	if (del == true) {
		User.deleteUser(id);
	} else {

	}
}
var User = {
		deleteUser : function(id) {
		var data = {};
		$.ajax({
			url : "/admin/list-user/delete-user-with-ajax/" + id,
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
				if (jsonResult.status == 200) {
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
