package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Contato;
import model.ContatoRepository;

@WebServlet(urlPatterns="/valida-login")
public class ValidaLoginServlet extends HttpServlet {

	protected void service(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		
		if (	name != null 
				&& password != null 
				&& name.equals("vinicius@gmail.com")  
				&& password.equals("vinicius123")
			) {
			HttpSession session = req.getSession();
			
			session.setAttribute("login", name);
			resp.sendRedirect("index.jsp");
		} 
		else if (name != null 
				&& password != null 
				&& name.equals("admin")  
				&& password.equals("admin")
			) {
			HttpSession session = req.getSession();
			
			session.setAttribute("login", name);
			resp.sendRedirect("adm.jsp");
		}
		else {
			req.setAttribute("mensagem", "Usuario ou senha inválidos.");
			
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
		
		
	}
}
