<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css"
  rel="stylesheet"
/>
<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"
></script>

<meta charset="UTF-8">
<title>Đăng Nhập</title>
</head>
<body>

	<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form action="ktdn" method="post">
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="text" name="txtun" class="form-control form-control-lg" />
            <label class="form-label" for="form1Example13">Tên Đăng Nhập</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" name="txtpass" class="form-control form-control-lg" />
            <label class="form-label" for="form1Example23">Nhập Mật Khẩu</label>
          </div>

          <div class="d-flex justify-content-around align-items-center mb-4">
            <!-- Checkbox -->
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" name="but1" checked />
              <label class="form-check-label" for="form1Example3"> Nhớ Đăng Nhập </label>
            </div>
            <a href="dangky.jsp">Đăng Ký</a>
          </div>

          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block">Đăng Nhập</button>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
          </div>

          <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="#!"
            role="button">
            <i class="fab fa-facebook-f me-2"></i>Tiếp Tục Với Facebook
          </a>
          <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="#!"
            role="button">
            <i class="fab fa-twitter me-2"></i>Tiếp Tục Với Twitter</a>

        </form>
      </div>
    </div>
  </div>
</section>
	
<style>
	
.divider:after,
.divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}

</style>
</body>
</html>