<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
		<title>Senha gerada</title>
		
	    <link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
    	<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
    	<script src="js/carregaUltimaSenha.js" type="text/javascript"></script>
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"> 
	</head>
		<body>
			<main>
				<nav></nav>
				<div class="consultar-gerar-senha">
					<header>
						<h2 class="page-header">Consultar Senha</h2>
					</header>
					<div class="detalhes-gerar-senha">
						<h3>Senha</h3><hr>
						<h1>${senha.codigo}</h1><hr>
						<h3>${servico.nome}</h3>
						<h3><fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss" value="${senha.dataAbertura}"></fmt:formatDate></h3>
						
						  <div id="actions">
							  <button class= "btn btn-painel-atendimento" type="submit">Painel Atendimento</button>
						</div>
					</div>
				</div>
			</main>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	</body>
</html>