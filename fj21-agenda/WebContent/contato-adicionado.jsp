<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"> 
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<c:import url="cabecalho.jsp" />
			<div class="span-12">
				<p>
					Contato ${param.nome } adicionado com sucesso
				</p>
				<p>
					<a href="mvc?logica=ListaContatosLogic">lista de contatos</a>
				</p>			
			</div>
		</div>
	</div>

</body>
</html>