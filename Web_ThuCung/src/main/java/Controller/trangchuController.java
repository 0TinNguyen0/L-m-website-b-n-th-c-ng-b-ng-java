package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bean.thucungbean;
import bo.thucungbo;

/**
 * Servlet implementation class trangchuController
 */
@WebServlet("/trangchuController")
public class trangchuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangchuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		thucungbo tcbo = new thucungbo();
		ArrayList<thucungbean> dsthucung = null;
		
		String maLoai = request.getParameter("maLoai");
		if(maLoai!=null) {
			dsthucung = tcbo.getThuCungTheoLoai(maLoai);
			
		}else {
			dsthucung = tcbo.getthucung();
			
		}
		
		
		//khachhangbean kh = (khachhangbean)session.getAttribute("kh");
		//if(kh == null)
			//response.sendRedirect("ktdn");
		//else{
			
		//}
		request.setAttribute("dsthucung", dsthucung);
		RequestDispatcher rd = request.getRequestDispatcher("trangchu.jsp");
	    rd.forward(request, response);
	    
	}

	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
