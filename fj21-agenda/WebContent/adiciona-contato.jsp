<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"> 
<link href="css/jquery.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span-12">
				<c:import url="cabecalho.jsp" />
				<h3>Adiciona contatos</h3>
				<hr />
				<form class="form-horizontal" method="post" action="adicionaContato">
				
					<div class="control-group">
						<label class="control-label" for="nome">Nome:</label>
						<div class="controls">
						<input type="text" name="nome" id="nome" placeholder="Nome" /> 	
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="">E-mail:</label>
						<div class="controls">
						<input type="text" name="email" placeholder="Email" /> 
						</div>
					</div>				
					<div class="control-group">
						<label class="control-label" for="">Endereco:</label>
						<div class="controls">
						<input type="text" name="endereco" placeholder="Endereco" /> 
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="">Data Nascimento:</label>
						<div class="controls">
						<!--  
						<input type="text" name="dataNascimento" placeholder="Data Nascimento" />
						-->
						
						<caelum:campoData id="dataNascimento" />
						
						</div>
					</div>
					
					<div class="control-group">
						<div class="controls">
							<input class="btn btn-default" type="submit" value="gravar" />
						</div>
					</div>
					
					
				</form>			
				<p>
					<a href="lista-contatos.jsp">lista de contatos</a>
				</p>			
			</div>
		</div>	
	</div>
	


</body>
</html>