<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp" %>



<nav class="navbar navbar-default bg-main text-main" style="background: #ed5752; ">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-sm-12 left-rs">
				<div class="navbar-header" style="width: 100px;height: 66px;" >

					<a href="/home/index" class="navbar-brand" style="display:block;padding:0 15px 0 0;width: 100%;height: 100%; margin-left: 0"><img src="/static/images/logo.png" alt="" style="height: 100%; width: 100%"/></a>
				</div>
				<form class="navbar-form navbar-left web-sh" action="/product/list-by-keywords" method="get">
					<div class="form" style="color: white ;display: flex; align-content: center; justify-items: center">
						<%--						<i class="fa-solid fa-magnifying-glass" style="display: table-cell;line-height: 100%"></i>--%>
						<input name="keywords" type="text" class="form-control input-searchProduct" style="padding: 5px 10px" placeholder="Tìm kiếm sản phẩm...">
					</div>
				</form>
			</div>
			<div class="col-md-8 col-sm-12">
				<div class="right-nav" style="display: flex;align-items: center; justify-content: center">
					<div class="nav-b hidden-xs">
						<div class="nav-box">
							<ul class="list-menu-main">
								<li><a href="/home/about" style="color: white;font-weight: bold;font-size: 16px;padding-right: 3px;padding-left: 3px">Về chúng tôi</a></li>
								<li><a href="/home/contact" style="color: white;font-weight: bold;font-size: 16px;padding-right: 3px;padding-left: 3px">Liên hệ</a></li>
								<li><a href="/home/feedback" style="color: white;font-weight: bold;font-size: 16px;padding-right: 3px;padding-left: 3px">Phản hồi</a></li>
								<%--								<li><jsp:include page="_aside-cart.jsp" /></li>--%>
							</ul>
						</div>
					</div>
					<div class="three--btn"  style="height: 100%; position: relative">
						<div class="userCart dropdown" style="height: 100%; position: relative">
							<a class="btn__cart dropdown-toggle" style="height: 100%; padding: 10px; cursor: pointer; margin-left: 10px; color: white" data-toggle="dropdown"><i class="fa-solid fa-cart-shopping"></i>
								<span class="total-aqua">${cart.countCart}</span>
							</a>
							<div class="box--cart dropdown-menu" >
								<h4>GIỎ HÀNG </h4>
								<div class="container-list"></div>
							</div>
						</div>
					</div>
					<div class="login-sr" style="height: 100%; margin: auto">
						<c:choose>
							<c:when test="${empty sessionScope.user}">
								<div class="login-signup">
									<ul>
										<li><a href="/account/login" style="color: white;font-weight: bold;font-size: 16px">Login</a></li>
										<li><a class="custom-b" href="/account/register" style="color: white;font-weight: bold;font-size: 16px; background:black">Sign up</a></li>
									</ul>
								</div>
							</c:when>
							<c:otherwise>
								<div class="dropdown" style="margin-left: 15px; height: 50px;width:50px;display: flex; align-items: center;position: relative;">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="width: 100%;height: 100%">
										<img src="/static/images/customers/${user.photo}" style="display: block;border-radius: 50%;width: 100%;height: 100%;object-fit: cover">
									</a>
									<ul class="dropdown-menu" style="position: absolute;z-index: 20; top: 100%; transform: translateX(-50%)">
										<li><a href="/account/logoff">Đăng xuất</a></li>
										<li><a href="/account/change">Thay đổi mật khẩu</a></li>
										<li><a href="/account/edit">Chỉnh sửa thông tin</a></li>
										<li class="divider"></li>
										<li><a href="/order/list">Đơn hàng</a></li>
										<li><a href="/order/items">Mặt hàng đã mua</a></li>
										<c:if test="${sessionScope.user.admin}">
											<li class="divider"></li>
											<li><a href="/admin/home/index">Trang Admin</a></li>
										</c:if>
									</ul>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
</nav>
