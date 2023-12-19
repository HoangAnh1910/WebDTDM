
$(function() {
	$(".btn-like").click(function() {
		var id = $(this).parents("[data-id]").attr("data-id")
		let type = 'success';
		let icon = "<i class=\"fa-solid fa-heart\" style=\"z-index: 20\"></i>"
		let title = "<div class=\"title\" style=\"z-index: 20;color: rgb(254, 37, 37)\">Yêu thích</div>";
		let text = 'Đã thêm vào danh sách yêu thích';
		$.ajax({
			url : "/product/favorite/" + id,
			success : function(resp) {
				createToast(type,icon, title, text);
			}
		})
	});
	$(".btn-add-to-cart").click(function() {
		let type = 'warning';
		let icon = "<i class=\"fa-solid fa-cart-shopping\" style=\"z-index: 20;color: #00B46f\"></i>"
		let title = "<div class=\"title\" style=\"z-index: 20;color: #00B46f\">Thành công</div>";
		let text = 'Đã thêm vào danh sách giỏ hàng';
		createToast(type,icon, title, text);
	});
	let notifications = document.querySelector('.notifications');
	function createToast(type,icon, title, text){
		let newToast = document.createElement('div');
		newToast.innerHTML = `
            <div class="toast ${type}">
               
               ${icon}
                <div class="content">
                    ${title}
                    <span style="z-index: 20">${text}</span>
                </div>
                <i class="fa-solid fa-xmark" style="z-index: 20" onclick="(this.parentElement).remove()"></i>
            </div>`;
		notifications.appendChild(newToast);
		newToast.timeOut = setTimeout(
			()=>newToast.remove(), 2000
		)
	}
	// $(".success").on("click",function(){
	// 	console.log("clicked");
	// 	let type = 'success';
	// 	let title = 'Yêu thích';
	// 	let text = 'Đã thêm vào danh sách yêu thích';
	// 	createToast(type, title, text);
	// });

	$(".btn-envelope").click(function() {
		var id = $(this).parents("[data-id]").attr("data-id");
		// bỏ id sp vừa lấy đc bỏ vào input id sp
		$("#send-dialog #id").val(id);
		$(".nn-sending").hide();

		var id = $(this).parents("[data-id]").attr("data-id")
		$("#send-dialog").modal("show");
	})

	/* $(".btn-change-order").click(function() {
       var id = $(this).parents("[data-id]").attr("data-id");
       // bỏ id sp vừa lấy đc bỏ vào input id sp
       $("#send-dialog #id").val(id);
       $(".nn-sending").hide();

       var id = $(this).parents("[data-id]").attr("data-id")
       $("#send-dialog").modal("show");
   })*/


	// chức năng thẻ btn gửi thông tin sản phẩm to friend
	$(".btn-send-To-Friend").click(function() {
		/*
		 * var id = $("#send-dialog #id").val(); // lấy id ra lại từ modal var
		 * id = $("#send-dialog #from").val(); // lấy thông tin ng gửi var id =
		 * $("#send-dialog #to").val(); // lấy ng nhận var id = $("#send-dialog
		 * #subject").val(); // lấy tiêu đề var id = $("#send-dialog
		 * #body").val(); // lấy nội dung
		 */

		// data theo chuỗi json
		var data = {
			id : $("#send-dialog #id").val(),
			from : $("#send-dialog #from").val(),
			to : $("#send-dialog #to").val(),
			subject : $("#send-dialog #subject").val(),
			body : $("#send-dialog #body").val()
		}
		$("#sending").show();
		// console.log(data)
		// gửi lên server
		$.ajax({
			url : "/product/send-friend",
			data : data,
			type : "POST",
			success : function(res) {
				$("#sending").hide();
				$("#send-dialog").modal("hide");
			}
		})

	});

	$(".btn-send-To-Friend").click(function() {
		/*
		 * var id = $("#send-dialog #id").val(); // lấy id ra lại từ modal var
		 * id = $("#send-dialog #from").val(); // lấy thông tin ng gửi var id =
		 * $("#send-dialog #to").val(); // lấy ng nhận var id = $("#send-dialog
		 * #subject").val(); // lấy tiêu đề var id = $("#send-dialog
		 * #body").val(); // lấy nội dung
		 */

		// data theo chuỗi json
		var data = {
			id : $("#send-dialog #id").val(),
			from : $("#send-dialog #from").val(),
			to : $("#send-dialog #to").val(),
			subject : $("#send-dialog #subject").val(),
			body : $("#send-dialog #body").val()
		}
		$("#sending").show();
		// console.log(data)
		// gửi lên server
		$.ajax({
			url : "/product/send-friend",
			data : data,
			type : "POST",
			success : function(res) {
				$("#sending").hide();
				$("#send-dialog").modal("hide");
			}
		})

	});
})

$(document).ready(function(){
	const subject1 = {
		items : 1,
		loop: true,
		autoplay:true,
		autoplayTimeout:3000,
	}
	$(".owl-carousel").owlCarousel(subject1);
});

