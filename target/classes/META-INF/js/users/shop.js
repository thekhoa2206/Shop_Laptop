var Shop = {
	getUrlParameter : function(sParam) {
		var sPageURL = window.location.search.substring(1), sURLVariables = sPageURL
				.split('&'), sParameterName, i;
		for (i = 0; i < sURLVariables.length; i++) {
			sParameterName = sURLVariables[i].split('=');
			
			if (sParameterName[0] === sParam) {
				return sParameterName[1] === undefined ? true
						: decodeURIComponent(sParameterName[1]);
			}
		}
	},
	homePage : function(baseUrl, numberOP ) {
		var sort = Shop.getUrlParameter("sort");
		var currentPage = parseInt(Shop.getUrlParameter("page"));
		
		if(sort != null || sort != undefined){
			window.location = baseUrl + "?page=" + numberOP  + "?field=price&sort=" +sort;

		}else{
			window.location = baseUrl + "?page=" + numberOP;
		}
		
	},
	homePrevious : function(baseUrl, numberOfPage) {
		var currentPage = parseInt(Shop.getUrlParameter("page"));
		if(currentPage== null){
			window.location = baseUrl + "?page=" + 1;
		}else{
		if(currentPage > 1){
			window.location = baseUrl + "?page=" + (currentPage - 1);
		}else{
			document.getElementById("previous").disabled = true;
		}
		}
	},
	homeNext : function(baseUrl, numberOfPage) {
		var currentPage = parseInt(Shop.getUrlParameter("page"));
		if(currentPage== null){
			window.location = baseUrl + "?page=" + 1;
		}else{
		if(currentPage < numberOfPage){
		window.location = baseUrl + "?page=" + (currentPage + 1);
		}else{
			document.getElementById("next").disabled = true;
		}
		}
	},
	highTolow : function(baseUrl ){
		window.location = baseUrl +"?field=price&sort=desc";
	},
	lowToHight : function(baseUrl ){
		window.location = baseUrl + "?field=price&sort=asc";
	},
	addItemToCart : function(productId, quantity) {
		var data = {
			"productId" : productId,
			"quantity" : quantity
		};
		$.ajax({
			url : "/cart/mua-hang",
			type : "post",
			contentType : "application/json", // dữ liệu gửi lên web-service
												// có dạng là json.
			data : JSON.stringify(data), // object json -> string json

			dataType : "json", // dữ liệu từ web-service trả về là json.
			success : function(jsonResult) { // được gọi khi web-service trả
												// về dữ liệu.
				alert('thanh cong');

				$("#btnCheckout").html("Giỏ Hàng(" + jsonResult.data + ")");

				$('html, body').animate({
					scrollTop : $("#btnCheckout").offset().top - 100
				}, 1000);

			}
		});
	},

	saveContact : function() {
		var data = {};
		data["firstName"] = $("#fname").val();
		data["lastName"] = $("#lname").val();
		data["email"] = $("#email").val();
		data["subject"] = $("#subject").val();
		$.ajax({
			url : "/save-contact-with-ajax",
			type : "post",
			contentType : "application/json", // dữ liệu gửi lên web-service
												// có dạng là json.
			data : JSON.stringify(data), // object json -> string json

			dataType : "json", // dữ liệu từ web-service trả về là json.
			success : function(jsonResult) { // được gọi khi web-service trả
												// về dữ liệu.
				// alert(jsonResult.message);
				// $("#message").html(jsonResult.data);
				// $('#blogModal').modal('show');
				if (jsonResult.status == 200) {
					alert('Gửi thành công');
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