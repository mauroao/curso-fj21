package br.com.caelum.jdbc.teste;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TesteRemove {

	public static void main(String[] args) {
		Contato contato = new Contato();
		
		contato.setId((long) 5);
		
		ContatoDao dao = new ContatoDao();
		dao.remove(contato);
		
		System.out.println("Removido");

	}

}
