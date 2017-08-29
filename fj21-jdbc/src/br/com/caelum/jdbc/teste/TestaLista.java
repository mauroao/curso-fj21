package br.com.caelum.jdbc.teste;


import java.util.List;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TestaLista {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ContatoDao dao = new ContatoDao();
		
		List<Contato> contatos = dao.getlista();
		
		for (Contato contato : contatos) {
			System.out.println(contato.getNome());
			System.out.println(contato.getEndereco());
			System.out.println(contato.getEmail());
			System.out.println(contato.getDataNascimento().getTime());
			System.out.println("-----------");
			
		}

	}

}
