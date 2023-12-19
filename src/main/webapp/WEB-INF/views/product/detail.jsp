<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<f:formatDate value="${prod.productDate}" pattern="dd-MM-yyyy"
			  var="date" />
<f:formatNumber value="${prod.unitPrice}" pattern="#,###.00" var="price" />

<div class=" panel-success nn-detail" data-id="${prod.id}">
	<div class="row" style="height: fit-content">
		<div class="text-center col-lg-6" style="margin: 0 auto;" >
			<img src="/static/images/products/${prod.image}" style="width: 100%"/>
		</div>
		<div class="col-lg-6" style="padding: 1%">
			<h4 class="panel-title animate__animated animate__zoomIn" style="text-align: center; font-size: 20px; color: #032e50; text-transform: uppercase">${prod.name}</h4>
			<div class="animate__animated animate__zoomInLeft" >
				<div style=" display: block; background-color: white; box-shadow: 1px 1px 1px grey; border-radius: 5%; margin: auto; padding-top: 2%">
					<div style="padding: 3%; font-size: 16px"><strong>Đơn giá</strong>: <em style="float: right">${price}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Giảm giá</strong>: <em style="float: right"><f:formatNumber value="${prod.discount}" type="percent"/></em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Số lượng</strong>: <em style="float: right">${prod.quantity}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Ngày mở bán</strong>: <em style="float: right">${date}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Sẵn có</strong>: <em style="float: right">${prod.available}</em></div>
					<div style="padding: 3%; font-size: 16px"><strong>Loại</strong>: <em style="float: right">${prod.category.nameVN}</em></div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<div style="padding: 3%; font-size: 16px"><strong>Mô tả</strong>: <em style="font-weight:600;wtext-align: justify; display: block;">${prod.description}</em></div>
	</div>
	<div class="panel-footer text-right" style="background-color: white">
		<%@include file="btn-prod.jsp"%>
	</div>
</div>
<%@include file="dialog.jsp"%>
<jsp:include page="_comment.jsp"/>

<div class="nn-detail-relatives">
	<!-- tab buttons -->
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#same">HÀNG
			CÙNG LOẠI</a></li>
		<li><a data-toggle="tab" href="#like">HÀNG YÊU THÍCH</a></li>
		<li><a data-toggle="tab" href="#daxem">HÀNG ĐÃ XEM</a></li>
	</ul>

	<div class="panel panel-default">
		<div class="panel-body">
			<!-- tab content -->
			<div class="tab-content">
				<div id="same" class="tab-pane fade in active">
					<c:forEach var="p" items="${prod.category.products}">
						<a href="/product/detail/${p.id}"><img
								src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
				<div id="like" class="tab-pane fade">
					<c:forEach var="p" items="${like}">
						<a href="/product/detail/${p.id}"><img
								src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
				<div id="daxem" class="tab-pane fade">
					<c:forEach var="p" items="${daXem}">
						<a href="/product/detail/${p.id}"><img
								src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>