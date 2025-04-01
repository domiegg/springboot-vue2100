function nameCheck() {
			var reg = /^[\u4e00-\u9fa5]{2,}$/;
			if(reg.test($("#user_name").val())){
				$("#u").attr("color","green");
				$("#u").html("可以使用");
			}else{
				$("#u").attr("color","red");
				$("#u").html("不可以使用");
			}
		}
		function ageCheck() {
			var reg = /^([1-9][0-9]{0,2}|0)$/;
			if(reg.test($("#age").val())){
				$("#a").attr("color","green");
				$("#a").html("可以使用");
			}else{
				$("#a").attr("color","red");
				$("#a").html("不可以使用");
			}
		}
		function accCheck() {
			var reg = /^[a-z|A-Z|0-9|_|\.|@]{6,}$/;
			if(reg.test($("#account").val())){
				$("#a1").attr("color","green");
				$("#a1").html("可以使用");
			}else{
				$("#a1").attr("color","red");
				$("#a1").html("不可以使用");
			}
		}
		function telCheck() {
			var reg = /^(13|15|17|18)[0-9]{9}$/;
			if(reg.test($("#tel").val())){
				$("#t").attr("color","green");
				$("#t").html("可以使用");
			}else{
				$("#t").attr("color","red");
				$("#t").html("不可以使用");
			}
		}
		function cardCheck() {
			var reg = /^[0-9]{17}[0-9|X]$/;
			if(reg.test($("#card").val())){
				$("#c").attr("color","green");
				$("#c").html("可以使用");
			}else{
				$("#c").attr("color","red");
				$("#c").html("不可以使用");
			}
		}
		function f(a) {
			alert(a==1);
			if(a==1){
				var font = document.getElementsByTagName("font");
				for (var i = 0; i < font.length; i++) {
					if(font[i].color=="red"){
						return false;
					}
				}
				return false;
			}
		}