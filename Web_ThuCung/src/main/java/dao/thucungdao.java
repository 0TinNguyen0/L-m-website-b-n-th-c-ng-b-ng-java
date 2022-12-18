package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.thucungbean;

public class thucungdao {
	public ArrayList<thucungbean> getthucung() {
	    try {
	      ArrayList<thucungbean> ds = new ArrayList<thucungbean>();
	      // b1: ket noi vao csdl
	      KetNoi kn = new KetNoi();
	      kn.KetNoi();
	      // b2: lay du lieu
	      String sql = "select * from ThuCung";
	      PreparedStatement cmd = kn.cn.prepareStatement(sql);
	      ResultSet rs = cmd.executeQuery();
	      // b3: dua du lieu vao mang ds
	      while (rs.next()) {
	        String matc = rs.getString("MaTC");
	        String tentc = rs.getString("TenTC");
	        long gia = rs.getLong("Gia");	  
	        String maloai = rs.getString("MaLoai");
	        String anh = rs.getString("Anh");
	        int thangtuoi = rs.getInt("ThangTuoi");
	        String maulong = rs.getString("MauLong");
	        ds.add(new thucungbean(matc, tentc, gia, maloai, anh, thangtuoi, maulong ));
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
	public ArrayList<thucungbean> getThuCungTheoLoai(String maLoai) {
		ArrayList<thucungbean> ds = new ArrayList<thucungbean>();
		
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		
		String sql = "select * from ThuCung where MaLoai = ?";
		
		try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setString(1, maLoai);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
		        String matc = rs.getString("MaTC");
		        String tentc = rs.getString("TenTC");
		        long gia = rs.getLong("Gia");	  
		        String maloai = rs.getString("MaLoai");
		        String anh = rs.getString("Anh");
		        int thangtuoi = rs.getInt("ThangTuoi");
		        String maulong = rs.getString("MauLong");
		        ds.add(new thucungbean(matc, tentc, gia, maloai, anh, thangtuoi, maulong ));
		      }
			rs.close();
		    kn.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}	
		return ds;
	}
}
