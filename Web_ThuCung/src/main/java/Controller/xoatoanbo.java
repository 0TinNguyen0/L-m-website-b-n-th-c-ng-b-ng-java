package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import bo.giohangbo;

/**
 * Servlet implementation class xoatoanbo
 */
@WebServlet("/xoatoanbo")
public class xoatoanbo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoatoanbo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 	HttpSession session = request.getSession();
		    String maTC = request.getParameter("mtc");
		    giohangbo gh = (giohangbo) session.getAttribute("gio");
		    
		    if (request.getParameter("btnxoaall") != null) {
		      session.removeAttribute("gio");
		    }

		    if (gh.ds.size() != 0)
		      response.sendRedirect("giohangController");
		    else
		      response.sendRedirect("giohangController");
		  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
