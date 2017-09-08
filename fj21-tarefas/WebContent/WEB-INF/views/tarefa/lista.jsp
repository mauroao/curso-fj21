<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/jquery.js" ></script>

<link href="<c:url value="/assets/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span-12">
				<h3>Tarefas</h3>
				<a class="btn btn-default btn-primary" href="novaTarefa">Criar nova tarefa</a>
				<br />
				<br />
				<table class="table table-bordered table-striped">
					<thead>
						<th>Id</th>
						<th>Descricao</th>
						<th>Finalizado</th>
						<th>Data de Finalizacao</th>
						<th>.</th>
						<th>.</th>
					</thead>
					<tbody>
						<c:forEach items="${tarefas}" var="tarefa">
							<tr id="tarefa_${tarefa.id}" >
								<td>${tarefa.id}</td>
								<td>${tarefa.descricao}</td>
							
								<c:if test="${tarefa.finalizado eq false}">
									<td>
										<a href="#" onclick="finalizarAgora(${tarefa.id})">
											Finalizar agora
										</a>
									</td>
								</c:if>
								<c:if test="${tarefa.finalizado eq true}">
									<td>
									Finalizado
									</td>
								</c:if>						
								
								<td>
									<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
								</td>
								<td>
									<a class="btn btn-danger" href="removeTarefa?id=${tarefa.id}" >Remover</a>
								</td>
								<td>
									<a class="btn btn-primary" href="mostraTarefa?id=${tarefa.id}" >Editar</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>	
				<br />
				<a href="logout">Logout</a>		
			</div>
		</div>
	</div>
	
	<script>
		function finalizarAgora(id) {
			$.post('finalizaTarefa', {'id': id}, function(resposta){
				$('#tarefa_'+id).html(resposta);
			});
		}
	</script>


</body>
</html>