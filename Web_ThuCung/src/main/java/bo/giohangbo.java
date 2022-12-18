package bo;

import java.util.ArrayList;

import bean.giohangbean;
import bean.thucungbean;

public class giohangbo {
	 public ArrayList<giohangbean> ds
		= new ArrayList<giohangbean>();


public void XoaMotMatHang(String maTC) {
	ArrayList<giohangbean> revmoveElem = new ArrayList<giohangbean>();
	for(giohangbean h : ds)
		if(h.getMaTC().equals(maTC))
			revmoveElem.add(h);
	ds.removeAll(revmoveElem);
}

public long TongTien() {
    long s = 0;
    for (giohangbean h : ds)
      s = s + h.getThanhtien();
    return s;
  }

public void Them(String maTC) {
	thucungbo tcbo = new thucungbo();
	thucungbean tcbean;
	
	tcbean = tcbo.getthucung(maTC); 
	
	ds.add(new giohangbean(tcbean.getMaTC(), tcbean.getTenTC(),tcbean.getGia(),tcbean.getAnh() ));
}

}
