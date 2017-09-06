<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
					</thead>
					<tbody>
						<c:forEach items="${tarefas}" var="tarefa">
							<tr>
								<td>${tarefa.id}</td>
								<td>${tarefa.descricao}</td>
								<td>
									<c:if test="${tarefa.finalizado eq false}">
										Nao finalizado
									</c:if>
									<c:if test="${tarefa.finalizado eq true}">
										Finalizado
									</c:if>						
								</td>
								<td>
									<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>			
			</div>
		</div>
	</div>


</body>
</html>