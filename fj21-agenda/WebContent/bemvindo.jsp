<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- comentario em JSP aqui: nossa primeira applicacao --%>
	
	<% String mensagem = "Bem vindo ao sistema de agenda do FJ-21"; %>
	
	<p> <% out.println(mensagem); %> </p>
	
	<% String desenvolvido = "Desenvolvido por Mauro Oliveira"; %>
	
	<p> <%= desenvolvido %> </p>
	
	<% System.out.println("Tudo foi executado"); %>
	
	
</body>
</html>