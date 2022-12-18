package bean;

public class giohangbean {
	private String MaTC;
	private String TenTC;
	private long Gia;
	private String MaLoai;
	private String Anh;
	private int ThangTuoi;
	private String MauLong;
	private long thanhtien;
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public giohangbean(String maTC, String tenTC, long gia, String anh) {
		super();
		MaTC = maTC;
		TenTC = tenTC;
		Gia = gia;
		Anh = anh;
	}



	public giohangbean(String maTC, String tenTC, long gia, String maLoai, String anh, int thangTuoi, String mauLong) {
		super();
		MaTC = maTC;
		TenTC = tenTC;
		Gia = gia;
		MaLoai = maLoai;
		Anh = anh;
		ThangTuoi = thangTuoi;
		MauLong = mauLong;
	}
	public String getMaTC() {
		return MaTC;
	}
	public void setMaTC(String maTC) {
		MaTC = maTC;
	}
	public String getTenTC() {
		return TenTC;
	}
	public void setTenTC(String tenTC) {
		TenTC = tenTC;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public String getMaLoai() {
		return MaLoai;
	}
	public void setMaLoai(String maLoai) {
		MaLoai = maLoai;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
	}
	public int getThangTuoi() {
		return ThangTuoi;
	}
	public void setThangTuoi(int thangTuoi) {
		ThangTuoi = thangTuoi;
	}
	public String getMauLong() {
		return MauLong;
	}
	public void setMauLong(String mauLong) {
		MauLong = mauLong;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
}
