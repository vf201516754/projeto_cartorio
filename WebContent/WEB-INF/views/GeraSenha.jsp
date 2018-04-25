<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<title>Gera Senha</title>

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
		<link href="css/style.css" type="text/css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"> 
	</head>


	<body>
		<main>
			<nav></nav>
			<div class="form-gerar-senha">
				<header>
					<h2 class="page-header">Gerar Senha</h2>
				</header>
				<form action="gera_senha" method="GET">
					<div class="form-group form-servico">
						<label for="servico">Serviço</label>
						<select class="form-control" name="servico" id="servico">
							<option value=""></option>
							<c:forEach var="servico" items="${servicos}">
								<option value="${servico.sigla}">${servico.nome}</option>
							</c:forEach>
						</select>
					  </div>
					<div class="form-group form-prioridade">
						<label for="fila">Prioridade</label>
						<select class="form-control" name="fila" id="fila">
							<option value=""></option>
							<c:forEach var="fila" items="${filas}">
								<option value="${fila.sigla}">${fila.nome}</option>
							</c:forEach>
						</select>
					  </div>
					  <div id="actions" class="row">
						  <button id="botao" class="btn btn-gerar-senha" type="submit">Gerar</button>
					</div>
					<div id="ajaxGetUserServletResponse"></div>
				</form>
			</div>
		</main>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	</body>
	
</html>