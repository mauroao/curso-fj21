package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class ListaContatosLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		List<Contato> contatos = new ContatoDao((Connection)req.getAttribute("conexao")).getLista();
		req.setAttribute("contatos", contatos);
		return "lista-contatos.jsp";
	}

}
