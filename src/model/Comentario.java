package model;

public class Comentario {

	private int id;
	private String comentario, nome;
	
	public Comentario() {
		ComentarioRepository cRepositorio = new ComentarioRepository();
		this.setId(cRepositorio.getComentarios().size() + 1);
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
	public String getComentario() {
		return comentario;
	}
		
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
	
}
