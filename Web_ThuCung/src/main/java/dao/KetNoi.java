package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {
	public Connection cn;
	public void KetNoi() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Xong b1");
			String st="jdbc:sqlserver://LAPTOP-KH90N7BP\\SQLEXPRESS:1433;databaseName=QlThuCung;user=sa; password=123";
			cn = DriverManager.getConnection(st);
			System.out.println("Xong b2");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		public static void main(String[] args) {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
		}
}
