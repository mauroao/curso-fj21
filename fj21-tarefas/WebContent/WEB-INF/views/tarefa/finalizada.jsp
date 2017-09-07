<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<td>${tarefa.id}</td>
<td>${tarefa.descricao}</td>			
<td>
	Finalizado
</td>
<td>
	<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
</td>
<td>
	<a class="btn btn-danger" href="removeTarefa?id=${tarefa.id}" >Remover</a>
</td>
<td>
	<a class="btn btn-primary" href="mostraTarefa?id=${tarefa.id}" >Editar</a>
</td>