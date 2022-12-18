package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	ArrayList<loaibean> ds;
	loaidao ldao = new loaidao();
	
	public ArrayList<loaibean> getloai(){
		ds = ldao.getloai();
		return ds;
	}
}
