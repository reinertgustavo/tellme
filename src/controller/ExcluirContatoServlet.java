package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;
import model.ContatoRepository;

@WebServlet(urlPatterns = "/excluir-contato")
public class ExcluirContatoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		
		ContatoRepository repositorio = new ContatoRepository();
		
		int id = Integer.parseInt(req.getParameter("id"));
		Contato contato = repositorio.getById(id);
		
		repositorio.excluir(contato);
		
		List<Contato> lista = repositorio.getContatos();
			
		req.setAttribute("contatos",lista);
		
		RequestDispatcher rd = req.getRequestDispatcher("lista-contatos");
		rd.forward(req, resp);
	}
}
