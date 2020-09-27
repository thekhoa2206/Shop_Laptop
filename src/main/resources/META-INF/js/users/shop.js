var Shop = {
		saveContact: function() {
			var data = {};
			data["firstName"] = $("#fname").val();
			data["lastName"] = $("#lname").val();
			data["email"] = $("#email").val();
			data["subject"] = $("#subject").val();
			$.ajax({
				url: "/save-contact-with-ajax",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json

				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					//alert(jsonResult.message);
					//$("#message").html(jsonResult.data);
					//$('#blogModal').modal('show');
					if(jsonResult.status == 200) {
						alert('Gửi thành công');
					} else {
						alert('Lỗi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback

				}
			});
		}
}