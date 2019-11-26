package model;

import java.util.ArrayList;
import java.util.List;

public class ComentarioRepository {

	private static List<Comentario> comentarios = new ArrayList<>();
	
	public void salva(Comentario comentario) {
		comentarios.add(comentario);
	}
	
	public Comentario getById(int id) {
		for (Comentario comentario : comentarios) {
			if (comentario.getId() == id) {
				return comentario; //encontrou
			}
		}
		
		return null; //nao encontrou
	}
	
	public List<Comentario> getComentarios() {
		return comentarios;
	}
	
	public void excluir(Comentario comentario) {
		comentarios.remove(comentario);
	}
}
