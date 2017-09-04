<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"> 
</head>
<body>
	

	<div class="container">
		<div class="row">
			<div class="span-12">
				<c:import url="cabecalho.jsp" />
				<h3>Lista de contatos</h3>
				<table class="table table-striped table-bordered">
					<thead>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Endereco</th>
						<th>Data Nascimento</th>
						<th>.</th>
					</thead>
					<tbody>
					<c:forEach var="contato" items="${contatos}">
						<tr>
							<td>${contato.nome}</td>
							<td>
							<c:if test="${not empty contato.email }">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:if>		
							<c:if test="${empty contato.email }">
								contato nao informado
							</c:if>													
							</td>
							<td>${contato.endereco}</td>
							<td> 
								<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyy" /> 
							</td>
							<td>
								<a class="btn btn-danger" href="mvc?logica=RemoveContatoLogic&id=${contato.id }" >Remover</a>
							</td>
						</tr>
					</c:forEach>		
					</tbody>
			
				</table>				
				<p>
					<a href="adiciona-contato.jsp">adicionar contato</a>
				</p>
				
			</div>
		</div>
	</div>
	
	


</body>
</html>