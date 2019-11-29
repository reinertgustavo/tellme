package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Comentario;
import model.ComentarioRepository;

@WebServlet(urlPatterns="/novo-comentario")
public class NovoComentarioServlet extends HttpServlet {
		
	protected void doPost(HttpServletRequest req, 
		HttpServletResponse resp) throws ServletException, IOException {
		
		String nome = "<h3 class=\"post4\">Vinícius Solar</h3>";
		String postagem = req.getParameter("comentario");
		
		Comentario comentario = new Comentario();
		comentario.setComentario(postagem);
		comentario.setNome(nome);

		ComentarioRepository cRepositorio = new ComentarioRepository();
		cRepositorio.salva(comentario);
		
		req.setAttribute("comentario", comentario);
		
		RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		rd.forward(req, resp);
	}
}