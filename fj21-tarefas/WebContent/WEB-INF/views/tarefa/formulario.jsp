<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
				<h3>Adicionar Tarefa</h3>
				
				<form:errors path="tarefa.descricao" />
				
				<form action="adicionaTarefa" method="post" >
					Descricao: <br />
					<textarea rows="5" cols="100" name="descricao" ></textarea> <br />
					<input class="btn btn-default btn-primary" type="submit" value="Adicionar" >
				
				</form>			
			</div>
		</div>
	</div>
	


</body>
</html>