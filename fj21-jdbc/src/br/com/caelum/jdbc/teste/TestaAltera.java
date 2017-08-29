package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TestaAltera {

	public static void main(String[] args) {
		Contato contato = new Contato();
		
		contato.setId((long) 5);
		contato.setNome("Tamires alterado 2");
		contato.setEmail("tamires@tamires 2");
		contato.setEndereco("endereco Tamires 2");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		dao.altera(contato);
		
		System.out.println("Alterado");

	}

}
