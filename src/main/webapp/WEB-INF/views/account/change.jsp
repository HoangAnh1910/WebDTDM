<%@ page pageEncoding="utf-8"%>

<form action="/account/change" method="post">
	<div class="panel panel-default" style="background-color: #ffffff; border-radius: 5%; padding: 5%">
		<div class="panel-heading" style=" background-color: white">
			<div class="text-danger pull-right">${message}</div>
			<h4 class="panel-title" style=" background-color: white">ĐỔI MẬT KHẨU</h4>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<input name="username" value="${param.username}" class="form-control" style="border-color: white; border-bottom-color: grey; background-color: white; color: black">
			</div>
			<div class="form-group">
				<input type="password" name="password" value="${param.password}" placeholder="Mật khẩu hiện tại" class="form-control" style="border-color: white; border-bottom-color: grey; background-color: white; color: black">
			</div>
			<div class="form-group">
				<input type="password" name="newPassword" placeholder="Mật khẩu mới" value="${param.newPassword}" class="form-control" class="form-control" style="border-color: white; border-bottom-color: grey; background-color: white; color: black">
			</div>
			<div class="form-group">
				<input type="password" name="confirm" placeholder="Nhập lại mật khẩu mới" value="${param.confirm}" class="form-control" style="border-color: white; border-bottom-color: grey; background-color: white; color: black">
			</div>
		</div>
		<div class="panel-footer" style="background-color: white; height: 43px">
			<button class="" style="width: 50%; height: 43px; background-color: #E8E9EC; border-color: #E8E9EC; text-align: center; float: left"> Lưu </button>
			<a href="http://localhost:8081/home/index" style="width: 50%; height: 43px; background-color: #2D3B55; border-color: #2D3B55; text-align: center; color: white; float: right; line-height: 43px">Hủy</a>
		</div>
	</div>
</form>