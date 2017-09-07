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
				<h3>Alterar tarefa</h3>
				
				<form action="alteraTarefa" method="post">
					<input type="hidden" name="id" value="${tarefa.id}" /> 
					
					Descricao: <br />
					<textarea name="descricao" rows="5" cols="100">${tarefa.descricao}</textarea> <br />
					Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado ? 'checked' : '' } /> <br />
					
					Data de Finalizacao: <br />
					<input type="text" name="dataFinalizacao" 
					value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />" />					
					<br />
					<input type="submit" class="btn btn-primary" value="Alterar" />
				</form>
			
			</div>
		</div>
	</div>


</body>
</html>