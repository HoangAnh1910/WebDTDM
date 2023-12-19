<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>

<script src="/static/slideshow/js/modernizr.custom.63321.js"></script>
<script src="/static/slideshow/js/jquery.catslider.js"></script>
<link href="/static/slideshow/css/catslider.css" rel="stylesheet" />

</head>
<body>
	<!--Slide show-->
<%--	<div class="mi-slider">--%>
<%--		<!-- 	hiện danh sách 5 sản phẩm -->--%>
<%--		<c:forEach items="${slideshow_cates}" var="c">--%>
<%--			<ul>--%>
<%--				<c:forEach items="${c.products}" var="p">--%>
<%--					<li><a href="/product/detail/${p.id}"> <img--%>
<%--							src="/static/images/products/${p.image}" />--%>
<%--							<h4>${p.unitPrice}</h4>--%>
<%--					</a></li>--%>
<%--				</c:forEach>--%>

<%--			</ul>--%>
<%--		</c:forEach>--%>
<%--		<nav>--%>
<%--			<c:forEach items="${slideshow_cates}" var="c">--%>
<%--				<a href="#" style="font-size: 12px">${c.nameVN}</a>--%>
<%--			</c:forEach>--%>
<%--		</nav>--%>
<%--	</div>--%>
	<div class="owl-carousel" style="height: 400px;width: 100%; padding: 0 20px">
		<div style="width: 100%;height: 400px;background: url('/static/images/banner/banner1.png') no-repeat;background-size: 100% 400px;object-fit: cover"></div>
		<div style="width: 100%;height: 400px;background: url('/static/images/banner/Banner-Fujifilm-XT4.png') no-repeat;background-size: 100% 400px;object-fit: cover"></div>
		<div style="width: 100%;height: 400px;background: url('/static/images/banner/banner3.png') no-repeat ;background-size: 100% 400px;object-fit: cover"> </div>
	</div>
</body>
</html>


