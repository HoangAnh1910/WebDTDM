<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,500;0,700;1,100&display=swap" rel="stylesheet">

	<title>Trang mua sắm trực tuyến</title>
<tiles:insertAttribute name="head" />
</head>
<body style="font-family: Roboto, sans-serif">
<div class="notifications" style="z-index: 100"></div>
	<div class="" style="position: relative; width: 100vw">
<%--		<header class="row">--%>
<%--			<tiles:insertAttribute name="header" />--%>
<%--		</header>--%>
		<nav class="row" style="margin: 0 0">
			<tiles:insertAttribute name="menu" />
		</nav>
		<div class="row" style="margin: 0 10vw">
			<div class="col-sm-9">
					<tiles:insertAttribute name="body" />
			</div>
			<aside class="col-sm-3">
				<div class="row">
					<tiles:insertAttribute name="aside" />

				</div>
			</aside>
		</div>
		<footer class="row" style=" margin: 0 0">
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>

</body>
</html>