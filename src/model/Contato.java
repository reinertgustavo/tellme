package model;

public class Contato {
	
	private int id;
	private String nome;
	private String email;
	private String telefone;
	private String senha;
	private int pais;
	
	public Contato() {
		ContatoRepository repositorio = new ContatoRepository();
		this.setId(repositorio.getContatos().size() + 1);
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTelefone() {
		return telefone;
	}
	
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public String getSenha() {
		return senha;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public int getPais() {
		return pais;
	}
	
	public String getDescricaoPais() {
		switch (this.getPais()) {
		case 1:
			return "Brasil";	
			
		case 2:
			return "Argentina";
			
		case 3:
			return "Nicaragua";
		
		case 4:
			return "Estados Unidos";
			
		case 5:
			return "Russia";
		}
		return null;
		
	}
	
	public void setPais(int pais) {
		this.pais = pais;
	}
}