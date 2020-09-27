		$(document).ready(function(){
			//----
			$("#img2").click(function(){
				// lấy giá trị của thuộc tính src
				var strSrc = $("#img2").attr("src");
				//thay đổi ảnh chính
				$("#place-img").fadeOut(function(){
					$("#place-img").attr("src", strSrc);
					$("#place-img").fadeIn();
				});
				// xác lập đường viền quanh ảnh
				$("#img2").attr("style", "border: 1px solid red;");
				// reset đường veienf của ảnh khác
				$("#img1").attr("style", "border: 1px solid white;");
				$("#img3").attr("style", "border: 1px solid white;");
				$("#img4").attr("style", "border: 1px solid white;");
				$("#img5").attr("style", "border: 1px solid white;");
			});
			//----
			$("#img3").click(function(){
				// lấy giá trị của thuộc tính src
				var strSrc = $("#img3").attr("src");
				//thay đổi ảnh chính
				$("#place-img").fadeOut(function(){
					$("#place-img").attr("src", strSrc);
					$("#place-img").fadeIn();
				});
				// xác lập đường viền quanh ảnh
				$("#img3").attr("style", "border: 1px solid red;");
				// reset đường veienf của ảnh khác
				$("#img1").attr("style", "border: 1px solid white;");
				$("#img2").attr("style", "border: 1px solid white;");
				$("#img4").attr("style", "border: 1px solid white;");
				$("#img5").attr("style", "border: 1px solid white;");
			});
			//----
			$("#img4").click(function(){
				// lấy giá trị của thuộc tính src
				var strSrc = $("#img4").attr("src");
				//thay đổi ảnh chính
				$("#place-img").fadeOut(function(){
					$("#place-img").attr("src", strSrc);
					$("#place-img").fadeIn();
				});
				// xác lập đường viền quanh ảnh
				$("#img4").attr("style", "border: 1px solid red;");
				// reset đường veienf của ảnh khác
				$("#img1").attr("style", "border: 1px solid white;");
				$("#img3").attr("style", "border: 1px solid white;");
				$("#img2").attr("style", "border: 1px solid white;");
				$("#img5").attr("style", "border: 1px solid white;");
			});
			//----
			$("#img5").click(function(){
				// lấy giá trị của thuộc tính src
				var strSrc = $("#img5").attr("src");
				//thay đổi ảnh chính
				$("#place-img").fadeOut(function(){
					$("#place-img").attr("src", strSrc);
					$("#place-img").fadeIn();
				});
				// xác lập đường viền quanh ảnh
				$("#img5").attr("style", "border: 1px solid red;");
				// reset đường veienf của ảnh khác
				$("#img1").attr("style", "border: 1px solid white;");
				$("#img2").attr("style", "border: 1px solid white;");
				$("#img3").attr("style", "border: 1px solid white;");
				$("#img4").attr("style", "border: 1px solid white;");
			});
			//----
			$("#img1").click(function(){
				// lấy giá trị của thuộc tính src
				var strSrc = $("#img1").attr("src");
				//thay đổi ảnh chính
				$("#place-img").fadeOut(function(){
					$("#place-img").attr("src", strSrc);
					$("#place-img").fadeIn();
				});
				// xác lập đường viền quanh ảnh
				$("#img1").attr("style", "border: 1px solid red;");
				// reset đường veienf của ảnh khác
				$("#img5").attr("style", "border: 1px solid white;");
				$("#img2").attr("style", "border: 1px solid white;");
				$("#img3").attr("style", "border: 1px solid white;");
				$("#img4").attr("style", "border: 1px solid white;");
			});
		});