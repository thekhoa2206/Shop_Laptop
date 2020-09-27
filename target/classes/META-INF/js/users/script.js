	$(document).ready(function(){
			//khaibaos array chứa danh sách đường dẫn ảnh
			var slide = Array();
	 slide[0] = "images/users/slide-show-1.jpg";
	 slide[1] = "images/users/slide-show-2.jpg";
	 slide[2] = "images/users/slide-show-3.jpg";
	 slide[3] = "images/users/slide-show-4.jpg";
	 slide[4] = "images/users/slide-show-5.jpg";
	 slide[5] = "images/users/slide-show-6.jpg";
			var n = 1;
			setInterval(function(){
				$("#slide-img").fadeOut(function(){
					$("#slide-img").attr("src",slide[n]);
					$("#slide-img").fadeIn();
					n++;
			if(n >= slide.length)
						n=0;
				})
			}, 3000);
		})
	var slide = Array();
	 slide[0] = "images/users/slide-show-1.jpg";
	 slide[1] = "images/users/slide-show-2.jpg";
	 slide[2] = "images/users/slide-show-3.jpg";
	 slide[3] = "images/users/slide-show-4.jpg";
	 slide[4] = "images/users/slide-show-5.jpg";
	 slide[5] = "images/users/slide-show-6.jpg";
	 var n =0;
	 function next() {
	 	if(n == slide.length-1)
	 	n=-1;
	 	n++;
	 	document.getElementById('slide-img').setAttribute("src", slide[n]);
	 }
	function prev() {	
	 	if(n==0)
	 	n=slide.length;
	 	n--;

	 	document.getElementById('slide-img').setAttribute("src", slide[n]);
	 }
	 var a = -2952;
	function prev2() {
	 	if(a == 23)
	 		a = -2952;
	 		a+= 738;
			var margin ="margin-left:" + a + "px";
			document.getElementById('slide-show-2').setAttribute("style",margin);
	 }
	function next2() {
	 	if(a <= -2952)
	 		a = 0;
			var margin ="margin-left:" + a + "px";
			document.getElementById('slide-show-2').setAttribute("style",margin);
			a-=738;
	}

	jQuery(document).ready(function($) {   
  //selector đến menu cần làm việc
  var TopFixMenu = $("#menu");
  // dùng sự kiện cuộn chuột để bắt thông tin đã cuộn được chiều dài là bao nhiêu.
    $(window).scroll(function(){
    // Nếu cuộn được hơn 150px rồi
        if($(this).scrollTop()>150){
      // Tiến hành show menu ra   
        TopFixMenu.show();
        }else{
      // Ngược lại, nhỏ hơn 150px thì hide menu đi.
            TopFixMenu.hide();
        }}
    )
})