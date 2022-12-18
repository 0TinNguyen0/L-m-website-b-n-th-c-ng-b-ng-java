<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="java.security.spec.DSAGenParameterSpec"%>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/giohang.css" />
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
<title>Giỏ Hàng</title>
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
	
	
<tr>
	<!-- <td width="200" valign="top">
		<table>
			<%
				
				//ArrayList dsloai = (ArrayList<Loaibean>) request.getAttribute("dsloai");
				//for(Loaibean l:dsloai){
			%>
			<tr><td>
			<a href="TrangChuController?ml<%//=l.getMaLoai() %>">
			<%//=l.getTenLoai() %>
			</a>
			</td></tr>
			<%//} %>
		</table>
	</td> -->
	
	<td width="1000" valign="top">
	
	<%
	long tongTien = 0; %>
	<div class="show">
	<table class="table table-hover" style="margin-left: 35px; margin-top: 40px; border: dashed #b1154a; width: 850px; ">
	<%
	  ArrayList<giohangbean> gh = (ArrayList<giohangbean>)request.getAttribute("dsgiohang");
	
		if(gh == null){
			
	%>
	<h1>Hiện tại giỏ hàng ko có sản phẩm nào. Vui lòng quay lại trang chủ để chọn sản phẩm!</h1>
			<a href="trangchuController"><button>Trang Chủ</button></a>
		
	<%}else{ 
			for(giohangbean h : gh){
			
	 %>
		<tr>
			<td>
				<input type="checkbox" name="sBox" class="checkBoxMaThucAn" id="<%=h.getMaTC()%>">
			</td>
			<td>
				<img style="object-fit: cover; height: 120px; width: 150px;"src="${pageContext.request.contextPath}/<%=h.getAnh()%>">
			</td>
			
			<td>
				<b><%=h.getTenTC() %></b>
			</td>
		
			<td>
				<b>Giá: <%=h.getGia() %>đ</b>
			</td>
			
			<td>
			
				<!-- <a href="Xoa?ms=<%//=h.getMaThucAn()() %>">Tra lai</a>  -->
			</td>
		</tr>
		
	<%
	tongTien += h.getGia();
	}
	%>
			
	<%
	}
	%>
	</table>
	</div>
	<div class="card text-center" style="width: 575px; border: 3px dashed #b1154a;">
		  <div class="card-header">
		    Thanh toán đơn hàng
		  </div>
		  <div class="card-body">
		    <h5 class="card-title"><strong><i class="fa-solid fa-dollar-sign"></i> Tổng Tiền: <%=tongTien %>đ</strong></h5>
		    <p class="card-text">Hãy Nhìn Lại Giỏ Hàng Lần Cuối Trước Khi Thanh Toán</p>
		   	<img class="card hi" alt="" src="${pageContext.request.contextPath}/images/meme.jpg ">
		    <a href="#" class="btn btn-primary"><i class="fa-regular fa-hand-point-right"></i> Thanh Toán Ngay <i class="fa-regular fa-hand-point-left"></i></a>
		  	<h5 class="card-title" style="margin-top: 40px"><i class="fa-solid fa-gift"></i> Nhập Mã Giảm Giá</h5>
		    <input type="text" class="search-box" placeholder="Nhập mã giảm giá" style="width: 200px">
		    <a href="#" class="btn btn-primary">Áp dụng</a>
		  </div>
  	
	</div>
	<!-- </div> -->
	
	<form action="xoatoanbo">
		<div>
			<input name="btnxoaall" type="submit" value="Xóa toàn bộ">
		</div>
	</form>
	
	
	
	
	<div>
		<button class="btn btn-info" id ="xoaBtn"> Xóa </button>
		
		<form id="xoaForm" action="" method="post">
			<input type="hidden" id="listbooks" name="listbooks">
		</form>
	</div>
	
	</td>
</tr>


	
</body>
</html>