package bo;

import java.util.ArrayList;


import bean.thucungbean;
import dao.thucungdao;

public class thucungbo {
	ArrayList<thucungbean> ds;
	thucungdao tcdao = new thucungdao();
	
	public ArrayList<thucungbean> getthucung(){
		ds = tcdao.getthucung();
		return ds;
	}
	public thucungbean getthucung(String maTC) {
		ds = tcdao.getthucung();
		thucungbean t = new thucungbean();
		for(thucungbean thucung : ds) {
			if(thucung.getMaTC().equals(maTC))
				t = thucung;
		}
		
		return t;
	}
	public ArrayList<thucungbean> getThuCungTheoLoai(String maLoai){
		ds = tcdao.getThuCungTheoLoai(maLoai);
		return ds;
	}
	
}
