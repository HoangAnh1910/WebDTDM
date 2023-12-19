<%@ page pageEncoding="utf-8"%>
<form action="/account/forgot" method="post" style="padding-top: 5%; padding-bottom: 10% ;background-image: url('https://w0.peakpx.com/wallpaper/920/925/HD-wallpaper-it-s-a-beautiful-morning-fall-red-autumn-sun-beautiful-leaves-color-sun-rays-season-morning-light-pic-wall-lake-tree-water-shining-reflexion-colour-nature.jpg'); background-size: cover; background-repeat: no-repeat;">
	<div class="" style="width: 400px; margin: 16px auto; font-size: 16px; background-color: white; padding-bottom: 3%">
		<!-- Title -->
		<div style="width: 400px; margin: 16px auto; font-size: 16px;">
			<h2 style="background: #33b5e5;padding: 20px;font-size: 1.4em;font-weight: normal;text-align: center;text-transform: uppercase;color: #fff;">QUÊN MẬT KHẨU</h2>
		</div>

		<!-- Login form -->
		<div class="panel-body" style="background: #fff;padding:25px;">
			<div class="form-group">
				<input name="username" placeholder="Tên tài khoản" value="${username}"
					   class="form-control" required="required" style="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px; ">
			</div>
			<div class="form-group">
				<input type="password" placeholder="Địa chỉ email" name="email"
					   value="${email}" class="form-control" required="required" style="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px; margin-top: 7%">
			</div>
			<div class="form-group">
				<button class="btn btn-warning" style="width: 100%; height: 43px; background-color: #ef4d4d; text-align: center; border-radius: 0px; border: 1px solid #ef4d4d">
					<span class="glyphicon glyphicon-user"></span> Lấy lại mật khẩu
				</button>
			</div>
		</div>
		<div style="text-align: center">
			<div> No account yet? <a href="/account/register" style="color: #33b5e5">Sign up</a></div>
		</div>
	</div>
</form>