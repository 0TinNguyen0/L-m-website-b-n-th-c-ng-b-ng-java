<%@page import="bean.loaibean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.thucungbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="icon" type="image/png" href="images/favicon.jpg"/>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/home.css" />
<script src="https://kit.fontawesome.com/e8cf24fb09.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">

<!--link cdn boostrap 5.2-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<title>Trang Chủ</title>
</head>
<body>
		<!-- navigation -->
		<nav class="navbarr">
			<div class="nav">
				<!-- <div class="brand-logo">
			<span><strong>PET</strong></span>
			 -->
			</div>
			<img src="${pageContext.request.contextPath}/images/logo.png"
				class="brand-logo">
					<ul class="navbar-right">
				<%
				if (session.getAttribute("kh") != null) {
				%>
				<li><a href="logout"><span
						class="glyphicon glyphicon-user"></span> Đăng Xuất /</a></li>

				<li><a href="dangnhap.jsp"> <span
						class="glyphicon glyphicon-log-in"></span> Xin Chào: <%khachhangbean kh = (khachhangbean)session.getAttribute("kh");
						out.print(kh.getHoTen());%>
				</a></li>
				<%
				} else {
				%>
				<li><a href="dangnhap.jsp"><span
						class="glyphicon glyphicon-user"></span> Đăng Nhập  /</a></li>

				<li><a href="dangky.jsp"> <span
						class="glyphicon glyphicon-log-in"></span> Đăng Ký
						</a></li>
<%
 }
 %>
			</ul>
			<div class="nav-items">

				<div class="search">
					<input type="text" class="search-box" placeholder="Tìm Loại Chó">
					<button class="search-btn">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
				<a href="#"><i class="fa-solid fa-dog"></i></a> <a href="giohangController"><i
					class="fa-solid fa-cart-shopping"></i></a>
			</div>

			<ul class="containerr">
				<li class="link-item"><a href="trangchuController" class="link">Trang Chủ</a></li>
				<li class="link-item"><a href="trangchuController?maLoai=POODLE" class="link">Chó POODLE</a></li>
				<li class="link-item"><a href="trangchuController?maLoai=SHIBA" class="link">Chó SHIBA</a></li>
				<li class="link-item"><a href="trangchuController?maLoai=HUSKY" class="link">Chó HUSKY</a></li>
				<li class="link-item"><a href="trangchuController?maLoai=CHIHUAHUA" class="link">Chó CHIHUAHUA</a></li>
				<li class="link-item"><a href="giohangController" class="link">Giỏ Hàng</a></li>
				<div class="contact">
					<li><strong><i class="fa-solid fa-phone"></i><a>
								Liên Hệ: 0972.564.551</a></strong></li>
				</div>
			</ul>
	</nav>
	
<% if(request.getParameter("maLoai")==null){ %>	
	<div id="content" class="content-container">
		<div class="slider">
			<div class="slide active">
				<img src="https://sieupet.com/sites/default/files/shiba_inu2_0.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://chocanh.vn/wp-content/uploads/cho-shiba-cuoi-leading.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://tunglocpet.com/wp-content/uploads/2020/08/gia-cho-husky-fb-thumb.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://zoipet.com/wp-content/uploads/2021/12/husky-an-gi.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://image-us.eva.vn/upload/4-2020/images/2020-10-13/1602571290-887-thumbnail-width640height480.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://file.chodocu.com//2020/02/15/20200215093631-5bf5.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://www.thukieng.com/wp-content/uploads/2018/08/giong-cho-poodle-1.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://petwiki.vn/wp-content/uploads/2021/09/cho-poodle-1068x699.jpg"
					alt="">
			</div>
			<div class="slide">
				<img
					src="https://i.pinimg.com/originals/fa/36/85/fa3685f57a23463ad8ae0e8e34740791.jpg"
					alt="">
			</div>

			<div class="navigation">
				<i class="fas fa-chevron-left prev-btn"></i> <i
					class="fas fa-chevron-right next-btn"></i>
			</div>
			<div class="navigation-visibility">
				<div class="slide-icon active"></div>
				<div class="slide-icon"></div>
				<div class="slide-icon"></div>
				<div class="slide-icon"></div>
				<div class="slide-icon"></div>
				<div class="slide-icon"></div>
				<div class="slide-icon"></div>
				<div class="slide-icon"></div>
				<div class="slide-icon"></div>
			</div>
		</div>
	</div>


	<div class="describe">
		<div class="block-text-describe">
			<div class="text-describe">
				<h1>Giới Thiệu Về Shop Pet</h1>
				<h2>Shop Pet là trại nhân giống thú cảnh lớn tại Việt Nam. Với
					sự đa dạng về các giống chó mèo cảnh, chúng tôi đảm bảo chất lượng
					con giống, nguồn gen chuẩn cùng quy trình nhân giống chuyên nghiệp.
					Tại Shop Pet, các con giống đều là dòng thuần chủng, được chăm sóc
					kỹ lưỡng và có sức khỏe tốt, sẵn sàng về nhà mới.</h2>
			</div>

		</div>
	</div>
	
	<div class="introduce">
		<div class=block-many-introduce>
			<div class="many-introduce box1">
				<img alt=""
					src="${pageContext.request.contextPath}/images/shipper.png"
					class="shipper tr">
				<h1>MIỄN PHÍ VẬN CHUYỂN</h1>
				<h2>GIAO HÀNG TOÀN QUỐC: MÁY BAY, TÀU HỎA, TAXI....</h2>
			</div>
			<div class="many-introduce box">
				<img alt="" src="${pageContext.request.contextPath}/images/box.png"
					class="shi tr">
				<h1>QUÀ TẶNG HẤP DẪN</h1>
				<h2>TẶNG KÈM PHỤ KIỆN CẦN THIẾT CHO THÚ CƯNG</h2>
			</div>
			<div class="many-introduce box">
				<img alt=""
					src="${pageContext.request.contextPath}/images/camket.png"
					class="shi tr">
				<h1>CAM KẾT THUẦN CHỦNG 100%</h1>
				<h2>CAM KẾT THÚ CƯNG THUẦN CHỦNG KHÔNG LAI TẠP</h2>
			</div>
			<div class="many-introduce box box2">
				<img alt=""
					src="${pageContext.request.contextPath}/images/baohanh.png"
					class="shi tr">
				<h1>BẢO HÀNH SỨC KHỎE TOÀN DIỆN</h1>
				<h2>BÀN GIAO TỚI KHÁCH HÀNG THÚ CƯNG KHỎE MẠNH</h2>
			</div>
		</div>
		<div class="hotline">
			<a>HOTLINE: 0972.564.551 </a>
		</div>
	</div>
<%}%>

	<div class="container">
		<div class="row g-3">
			<!-- 		<div class="card-group"> -->
			<!-- 
			<div class="information-pet"
				style="margin-top: 200px; display: flex; flex-wrap: wrap; align-items: center; justify-content: cente">
				
				 -->
			<%
				ArrayList<thucungbean> dsthucung = new ArrayList<>();
				dsthucung = (ArrayList<thucungbean>) request.getAttribute("dsthucung");

				for (thucungbean ds : dsthucung) {
				%>

			<div class="col-4">
				<div class="card text-center">
					<img style="object-fit: cover; height: 450px;"
						src="${pageContext.request.contextPath}/<%=ds.getAnh()%>"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><%=ds.getTenTC()%></h5>
						<p class="card-text">
							Tháng tuổi:
							<%=ds.getThangTuoi()%></p>
						<p
							class="card-text d-flex flex-column justify-content-center align-items-center">
							<small class="text-muted">Giá: <%=ds.getGia()%>đ</small> <small
								class="text-muted"> Màu lông: <%=ds.getMauLong()%></small>
						</p>
						<a href="themgioController?mtc=<%=ds.getMaTC() %>" class="btn btn-primary">Thêm vào giỏ hàng</a>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
	<!-- 	</div> -->
	<!-- </div> -->


	<div class="end"></div>
	</div>

	<script src="${pageContext.request.contextPath}/js/content.js"></script>

</body>
</html>