package com.electrogrid.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.electrogrid.model.Power;
import com.electrogrid.repository.PowerRepository;

@WebServlet("/UserServlet")
public class PowerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Power userObject = new Power();

    public PowerServlet() {
    	super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String dispatchPage;
		
		try {
			PowerRepository powerRepository = new PowerRepository();
			List <Power> powers = powerRepository.getPowers();
			
			request.setAttribute("power_list", powers);
			
			if(powers != null) {
				dispatchPage = "PowerList.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
				dispatcher.forward(request, response);
			}else {
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('Not Found Customer Details');");
				pw.println("location = 'UserServlet'");
				pw.println("</script>");
			}
			
		}catch (Exception ex){
			ex.printStackTrace();
		}
				
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
