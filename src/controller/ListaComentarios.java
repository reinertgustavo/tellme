package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Comentario;
import model.ComentarioRepository;

@WebServlet(urlPatterns = "/lista-comentarios")
public class ListaComentarios extends HttpServlet{
		protected void doGet(HttpServletRequest req, 
				HttpServletResponse resp) throws ServletException, IOException {
			ComentarioRepository cRepositorio = new ComentarioRepository();
			
			List<Comentario> lista = cRepositorio.getComentarios();
			
			req.setAttribute("Comentario",lista);
			
			RequestDispatcher rd = req.getRequestDispatcher("lista-comentarios.jsp");
			rd.forward(req, resp);
	}
}