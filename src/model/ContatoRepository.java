package model;

import java.util.ArrayList;
import java.util.List;

public class ContatoRepository {
	
	private static List<Contato> contatos = new ArrayList<>();
	
	public void salva(Contato contato) {
		contatos.add(contato);
	}
	
	public Contato getById(int id) {
		for (Contato contato : contatos) {
			if (contato.getId() == id) {
				return contato; //encontrou
			}
		}
		
		return null; //nao encontrou
	}
	
	public List<Contato> getContatos() {
		return contatos;
	}
	
	public void excluir(Contato contato) {
		contatos.remove(contato);
	}
	
}
