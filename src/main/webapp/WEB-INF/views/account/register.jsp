<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>

<form:form action="/account/register" modelAttribute="user"
		   enctype="multipart/form-data" cssStyle="margin-bottom: 20px">
	<div class="row" style="display:flex;margin: 0; justify-content:center;padding-top: 5%; padding-bottom: 10% ;background-image: url('https://w0.peakpx.com/wallpaper/920/925/HD-wallpaper-it-s-a-beautiful-morning-fall-red-autumn-sun-beautiful-leaves-color-sun-rays-season-morning-light-pic-wall-lake-tree-water-shining-reflexion-colour-nature.jpg'); background-size: cover; background-repeat: no-repeat;">
		<div class="col-10 col-sm-8 col-lg-6" style="font-size: 16px; background-color: white; padding-bottom: 3%">
			<!-- Title -->
			<div style="width: 100%; margin: 16px auto; font-size: 16px;">
				<h2 style="background: #33b5e5;padding: 20px;font-size: 1.4em;font-weight: normal;text-align: center;text-transform: uppercase;color: #fff;">ĐĂNG KÝ</h2>
			</div>

			<div class="panel-body" style="background: #fff;padding:25px;">
				<div class="form-group" >
					<form:input path="id" class="form-control" required="required" placeholder="Tên tài khoản" cssStyle="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px; "/>
					<form:errors path="id"></form:errors>
				</div>
				<div class="form-group">
					<form:input path="password" class="form-control"  type="password" required="required" placeholder="Mật khẩu" cssStyle="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px;"/>
					<form:errors path="password"></form:errors>
				</div>
				<div class="form-group">
					<input name="confirm" type="password" value="${param.confirm}" class="form-control" required="required" placeholder="Nhập lại mật khẩu" style="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px;"/>
				</div>
				<div class="form-group">
					<form:input path="fullname" class="form-control" required="required" placeholder="Họ và tên" cssStyle="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px;"/>
					<form:errors path="fullname"></form:errors>
				</div>
				<div class="form-group">
					<form:input path="email" class="form-control" type="email" required="required" placeholder="Email" cssStyle="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px;"/>
					<form:errors path="email"></form:errors>
				</div>

				<div class="form-group">
					<input type="file" name="photo_file" class="form-control" style="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: max-content; "/>
					<form:hidden path="photo" />
				</div>

				<div class="pull-left text-danger" style="text-align: center">${message}</div>

				<div class="form-group">
					<button class="btn btn-warning" style="width: 100%; height: 43px; background-color: #ef4d4d; text-align: center; border-radius: 0px; border: 1px solid #ef4d4d">
						<span class="glyphicon glyphicon-user"></span> Đăng ký
					</button>
				</div>

				<div style="text-align: center">
					<div> Have account? <a href="http://localhost:8081/account/login" style="color: #33b5e5">Login</a></div>
				</div>
			</div>
		</div>
	</div>
</form:form>