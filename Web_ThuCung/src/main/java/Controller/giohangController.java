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

import bean.giohangbean;
import bean.loaibean;
import bo.giohangbo;
import bo.loaibo;

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		giohangbo gh;
		ArrayList<giohangbean> dsgiohang = null;
		
	    if(session.getAttribute("gio") == null ) {
	    	gh = new giohangbo();
	    	session.setAttribute("gio", gh);
	    }
	    gh = (giohangbo) session.getAttribute("gio");
	    if (gh != null) {
	        dsgiohang = gh.ds;
	      }
		
	    
	    request.setAttribute("dsgiohang", dsgiohang);
	    
	    System.out.print(dsgiohang.size());
	    
	    RequestDispatcher rd = request.getRequestDispatcher("giohang.jsp");
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
