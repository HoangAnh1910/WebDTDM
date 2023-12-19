<%@ page pageEncoding="utf-8"%>
<form action="/account/login" method="post" class="row" style="margin:0 0 20px 0;display:flex;justify-content:center;padding-top: 5%; padding-bottom: 10% ;background-image: url('https://w0.peakpx.com/wallpaper/920/925/HD-wallpaper-it-s-a-beautiful-morning-fall-red-autumn-sun-beautiful-leaves-color-sun-rays-season-morning-light-pic-wall-lake-tree-water-shining-reflexion-colour-nature.jpg'); background-size: cover; background-repeat: no-repeat;">
	<div class="col-10 col-sm-8 col-lg-6" style=" margin: 16px auto; font-size: 16px; background-color: white; padding-bottom: 3%">
		<!-- Title -->
		<div style="width: 100%; margin: 16px auto; font-size: 16px;">
			<h2 style="background: #33b5e5;padding: 20px;font-size: 1.4em;font-weight: normal;text-align: center;text-transform: uppercase;color: #fff;">ĐĂNG NHẬP</h2>
		</div>

		<!-- Login form -->
		<div class="panel-body" style="background: #fff;padding:25px;">
			<div class="form-group">
				 <input name="username" placeholder="Tên tài khoản" value="${username}"
					class="form-control" required="required" style="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px; ">
			</div>
			<div class="form-group">
				<input type="password" placeholder="Mật khẩu" name="password"
					value="${password}" class="form-control" required="required" style="border: 1px solid black; background-color: white; color: black; border-radius: 0px; height: 45px; margin-top: 7%">
			</div>
			<div class="form-group">
				<button class="btn btn-warning" style="width: 100%; height: 43px; background-color: #ef4d4d; text-align: center; border-radius: 0px; border: 1px solid #ef4d4d">
					<span class="glyphicon glyphicon-user"></span> Đăng nhập
				</button>
			</div>
			<div class="form-group">
				<label> <input name="remember" type="checkbox" value="true"
					${empty username ? '' : 'checked'}> Ghi nhớ tài khoản ?
				</label>
			</div>
		</div>

		<!-- Other Login Method -->
		<div class="" style="padding-bottom: 3%">
			<h3 style="color: #33b5e5;text-align: center;font-size:20px;margin-top: 0px;">OR</h3>
		</div>
		<div style="margin: 0px 0px 20px 0px;text-align: center;">
			<div style="margin-right: 5px;">
				<!-- facebook -->
				<a href="#" style="width: 40px; height: 40px; color: #fff; opacity: 0.75; display: inline; margin-right: 10px">
					<i class="fa-brands fa-facebook" style="color: #6c83b2; font-size: 40px"></i>
				</a>

				<!-- twitter -->
				<a href="#" style="width: 40px; height: 40px; color: #fff; opacity: 0.75; display: inline">
					<i class="fa-brands fa-square-twitter" style="color: #80c1f2; font-size: 40px; margin-right: 10px"></i>
				</a>

				<!-- Google Plus -->
				<a href="#" style="width: 40px; height: 40px; color: #fff; opacity: 0.75; display: inline">
					<i class="fa-brands fa-google-plus" style="color: #e6786b; font-size: 40px"></i>
				</a>
			</div>
		</div>

		<div style="text-align: center">
			<div> No account yet? <a href="http://localhost:8081/account/register" style="color: #33b5e5">Sign up</a></div>
			<div> <a href="/account/forgot" style="color: #33b5e5"> Forgot your password? </a> </div>
		</div>
	</div>
</form>