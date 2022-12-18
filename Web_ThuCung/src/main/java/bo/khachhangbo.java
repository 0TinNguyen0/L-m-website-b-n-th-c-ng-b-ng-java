package bo;

import java.util.ArrayList;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	ArrayList<khachhangbean> ds;
	  khachhangdao khdao = new khachhangdao();

	  public khachhangbean ktdn(String tendn, String pass) {
	    return khdao.ktdn(tendn, pass);
	  }

	  public ArrayList<khachhangbean> getkh() {
	    ds = khdao.getkh();
	    return ds;
	  }

	  public int Kiemtra(String tendn, String pass) {
	    int check = 0;
	    for (khachhangbean kh : ds)
	      if (kh.getTenDN().equals(tendn) && kh.getMatKhau().equals(pass))
	        check = 1;
	    return check;
	  }

	  public int ThemKH( String hoTen, String diaChi, String soDT, String email, String tenDN,
				String matKhau) {
		  	return khdao.ThemKH(hoTen,  diaChi,  soDT, email, tenDN, matKhau);
		  }
}
