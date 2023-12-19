
var arrCart = [];
var priceTotal = 0;
var countTotal = 0;
$(function() {
	$.ajax({
		url : "/product/getCount/",
		success : function(res) {
			// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
			// tượng json
			var info = JSON.parse(res);
			// bỏ giữa vào 2 thẻ
			priceTotal = info.amount;
			countTotal = info.count;
		}
	});
	$.ajax({
		url : "/product/getCart/",
		success : function(res) {
			// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
			// tượng json
			arrCart = JSON.parse(res);
			// bỏ giữa vào 2 thẻ
			renderCart(arrCart);
		}
	});
	//thêm giỏ hàng
	$(".btn-add-to-cart").click(function() {
		// lay id sp
		var id = $(this).parents("[data-id]").attr("data-id");

		$.ajax({
			url : "/product/add-to-cart/" + id,
			success : function(res) {
				// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
				// tượng json
				var info = JSON.parse(res);
				// bỏ giữa vào 2 thẻ
				priceTotal = info.amount;
				countTotal = info.count;
				updateCartInfo(info);
				$.ajax({
					url : "/product/getCart/",
					success : function(res) {
						// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
						// tượng json
						arrCart = JSON.parse(res);
						// bỏ giữa vào 2 thẻ
						renderCart(arrCart);
					}
				});
			}
		});
		effectCart(id);
	});

	$(".btn__cart").click(function (){
		console.log("clicked");
	})
	// xóa từng item
	$(".btn-cart-remove").click(function() {
		// lay id sp
		var id = $(this).parents("[data-id]").attr("data-id");
		$.ajax({
			url : "/cart/remove/" + id,
			success : function(res) {
				// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
				// tượng json
				var info = JSON.parse(res);
				// bỏ giữa vào 2 thẻ
				priceTotal = info.amount;
				countTotal = info.count;
				updateCartInfo(info);
				$.ajax({
					url : "/product/getCart/",
					success : function(res) {
						// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
						// tượng json
						arrCart = JSON.parse(res);
						// bỏ giữa vào 2 thẻ
						renderCart(arrCart);
					}
				});
			}
		});
		// hiệu ứng ẩn dòng sản phẩm khi xóa
		$(this).parents("[data-id]").hide(100);
	});

	// chức năng xóa tất cả giỏ hàng
	$(".btn-cart-clear").click(function(){
		$.ajax({
			url: "/cart/clear",
			success : function(res)
			{
				var info = JSON.parse(res);
				priceTotal = info.amount;
				countTotal = info.count;
				updateCartInfo(info);
				$.ajax({
					url : "/product/getCart/",
					success : function(res) {
						// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
						// tượng json
						arrCart = JSON.parse(res);
						// bỏ giữa vào 2 thẻ
						renderCart(arrCart);
					}
				});
			}
		});
		/*
         * ẩn tất cả <tr> bằng cách ẩn <tbody> $(".hide-cart").hide(100);
         */
		// hiệu ứng ẩn duyệt qua từng thẻ <tr>
		$(".hide-cart").each(function(index,tr){
			$(tr).hide(500 * (1 + index));
		})
	});

	// chức năng thay đổi số lượng sản phẩm
	$(".txt-cart-quantity").on("input",function(){
		var id = $(this).parents("[data-id]").attr("data-id");
		var qty = $(this).val();
		$.ajax({
			url: `/cart/update/${id}/${qty}`,
			success : function(res)
			{
				// phản hồi từ sv cập nhật lại tt giỏ hàng
				var info = JSON.parse(res);
				priceTotal = info.amount;
				countTotal = info.count;
				updateCartInfo(info);
				$.ajax({
					url : "/product/getCart/",
					success : function(res) {
						// nhận chuỗi vừa trả về từ sv (count + amount)-> biến thành đối
						// tượng json
						arrCart = JSON.parse(res);
						// bỏ giữa vào 2 thẻ
						renderCart(arrCart);
					}
				});
			}
		});

		var price = $(this).parents("[data-price]").attr("data-price");
		var disc = $(this).parents("[data-discount]").attr("data-discount");
		var amount =Math.round(price*qty * (1- disc)*100)/100; // làm tròn
		$(this).parents("tr").find("td:eq(5)").html(`$${amount}`);

	})

})
function updateCartInfo(info) {
	$("#cart-cnt").html(info.count);
	$("#cart-amt").html(info.amount);
	$(".total-aqua").text(info.count);
}
function effectCart(id) {
	var img = $(this).parents("[data-id]").find(".panel-body img");

	$("style#cart-effect").html(`.cart-effect{ background-image:
	  url("${img.attr("src")}"); background-size: 100% 100%; }`);


	/*
     * cart-img -> id đặt trong thẻ img giỏ hàng cart-fly -> định nghĩa css
     */
	var options = {
		to : "#cart-img",
		className : "cart-fly"
	}
	img.effect("transfer", options, 1000)
}
function formatVND(price){
	const formatter = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' });
	const formattedAmount = formatter.format(price);
	return formattedAmount;
}
function renderCart(listItem) {
	let stringRender = "";
	if (listItem.length === 0){
		$(".container-list").html(`<img src="https://salanest.com/img/empty-cart.webp" style="width: 60%; height: 60%;object-fit: cover; display: block;margin: auto">` );
		return;
	}
	listItem.map((item) =>{
		stringRender += `<div class="item" style="box-shadow: 0px 0px 5px 1px #c5c5c5;height: 100px; padding: 5px">
										<div class="box--image" style="width: 100px; height: 100%;padding: 5px">
											<img src="/static/images/products/${item.image}" style="width: 100%;height: 100%">
										</div>
										<div class="box--content" style="width: 170px; height: 100%; display: flex; flex-direction: column; justify-content: space-between">
											<h5 style="font-size: 18px; margin: 0">${item.name}</h5>
											<div><span>${item.quantity}</span><span>${formatVND(item.unitPrice)}</span></div>
										</div>
									</div>`
	})
	const stringRenderRs = `<div class="list--item" style="overflow-y: scroll; max-height: 300px; padding: 5px">
								${stringRender} 
								</div>		
								<div class="total--price">TỔNG TIỀN: <span class="total--money">0</span></div>
								<a href="/cart/view" style="background: #00b46f;width: max-content; color: white;padding: 5px 10px; margin: auto;display: block ;border-radius: 6px; text-decoration: none">XEM GIỎ HÀNG</a>							
`

	$(".container-list").html(stringRenderRs);
	$(".total--money").html(formatVND(priceTotal));
}