package controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns="/adm")
public class admFilter implements Filter {
		public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
				throws IOException, ServletException {
			HttpServletRequest request = ((HttpServletRequest) req);
			
			HttpSession session = request.getSession();
			String login = (String) session.getAttribute("login");

			if(login == null) {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(req, res);
			}
			else if (login.equals("admin")) {
				RequestDispatcher rd = request.getRequestDispatcher("adm.jsp");
				rd.forward(req, res);
			} 			
			else {
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(req, res);
			}
		}
	}