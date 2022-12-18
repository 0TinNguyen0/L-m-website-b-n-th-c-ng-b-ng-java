package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class khachhangdao {
	public ArrayList<khachhangbean> getkh() {
	    try {
	      // Tao 1 mang luu all loai
	      ArrayList<khachhangbean> ds = new ArrayList<khachhangbean>();
	      // b1: ket noi vao csdl
	      KetNoi kn = new KetNoi();
	      kn.KetNoi();
	      // b2: lay du lieu ve
	      String sql = "select * from KhachHang";
	      PreparedStatement cmd = kn.cn.prepareStatement(sql);
	      ResultSet rs = cmd.executeQuery();
	      // b3: dua du lieu vao mang ds
	      while (rs.next()) {
	        long makh = rs.getLong("MaKH");
	        String hoten = rs.getString("HoTen");
	        String diachi = rs.getString("DiaChi");
	        String sodt = rs.getString("SoDT");
	        String email = rs.getString("Email");
	        String tendn= rs.getString("TenDN");
	        String pass = rs.getString("MatKhau");
	        ds.add(new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass));
	      }
	      // b4: dong ket noi
	      rs.close();
	      kn.cn.close();
	      return ds;
	    } catch (Exception e) {
	      e.printStackTrace();
	      return null;
	    }
	  }
	  public khachhangbean ktdn(String tendn, String pass) {
		    try {
		      KetNoi kn = new KetNoi();
		      kn.KetNoi();
		      String sql = "select * from KhachHang where TenDN=? and MatKhau=?";
		      PreparedStatement cmd = kn.cn.prepareStatement(sql);
		      cmd.setString(1, tendn);
		      cmd.setString(2, pass);
		      ResultSet rs = cmd.executeQuery();
		      khachhangbean kh = null;
		      if (rs.next()) { // dang nhap thanh cong
		    	  long makh = rs.getLong("MaKH");
			        String hoten = rs.getString("HoTen");
			        String diachi = rs.getString("DiaChi");
			        String sodt = rs.getString("SoDT");
			        String email = rs.getString("Email");
		        kh = new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
		      }
		      rs.close();
		      kn.cn.close();
		      return kh;
		    } catch (Exception e) {
		      e.printStackTrace();
		      return null;
		    }
		  }
	  
	  public int ThemKH(String hoTen, String diaChi, String soDT, String email, String tenDN,
				String matKhau) {
		    try {
		      KetNoi kn = new KetNoi();
		      kn.KetNoi();
		      String sql =
		          "insert into KhachHang(HoTen, DiaChi, SoDT, Email, TenDN, MatKhau) values (?, ?, ?, ?, ?, ?)";
		      PreparedStatement cmd = kn.cn.prepareStatement(sql);
		      cmd.setString(1, hoTen);
		      cmd.setString(2, diaChi);
		      cmd.setString(3, soDT);
		      cmd.setString(4, email);
		      cmd.setString(5, tenDN);
		      cmd.setString(6, matKhau);
		      ResultSet rs = cmd.executeQuery();

		      int kq = cmd.executeUpdate();
		      kn.cn.close();
		      return kq;
		    } catch (Exception e) {
		      e.printStackTrace();
		      return 0;
		    }
		  }
	  
	  public static void main(String[] args) {
		    // TODO Auto-generated method stub
		    khachhangdao khdaoo = new khachhangdao();
		    khachhangbean kh = new khachhangbean();
		    khdaoo.ThemKH("a", "b", "2", "e", "www", "123");
		  }
}
