package br.com.caelum.tarefas.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.tarefas.dao.JdbcTarefaDao;
import br.com.caelum.tarefas.modelo.Tarefa;

@Controller
public class TarefasController {
	
	@RequestMapping("novaTarefa")
	public String form() {
		return "tarefa/formulario";
	}
	
	@RequestMapping("adicionaTarefa")
	public String adiciona(@Valid Tarefa tarefa, BindingResult result) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		
		if (result.hasFieldErrors("descricao")) {
			return "tarefa/formulario";
		}
		
		dao.adiciona(tarefa);
		
		return "redirect:listaTarefas";
	}
	
	@RequestMapping("listaTarefas")
	public String lista(Model model) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		model.addAttribute("tarefas", dao.lista());
		return "tarefa/lista";
	}
	
	@RequestMapping("removeTarefa")
	public String remove(Tarefa tarefa) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		dao.remove(tarefa);
		return "redirect:listaTarefas";
	}
	
	@RequestMapping("mostraTarefa")
	public String mostra(Long id, Model model) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		model.addAttribute("tarefa", dao.buscaPorId(id));
		return "tarefa/mostra";
	}
	
	@RequestMapping("alteraTarefa")
	public String mostra(Tarefa tarefa) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		dao.altera(tarefa);
		return "redirect:listaTarefas";
	}	
	
}
