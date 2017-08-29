package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) {
		Contato contato = new Contato();
		
		contato.setNome("Tamires");
		contato.setEmail("tamires@tamires");
		contato.setEndereco("endereco Tamires");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
		
		System.out.println("Gravado");
		
		

	}

}
