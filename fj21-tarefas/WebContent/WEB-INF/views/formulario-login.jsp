<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="span-12">
			
			<h2>Login</h2>
			
			<form action="efetuaLogin" method="post">
				Login: <br />
				<input type="text" name="login" /> <br />
				Senha: <br />
				<input type="password" name="senha" > <br />
				<input class="btn btn-primary" type="submit" value="Entrar" />
			</form>
			
			</div>
		</div>
	</div>			

</body>
</html>