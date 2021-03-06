<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Atendimento | Balcão</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="js/teste.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="inc/css/atendente-style.css" />
    </head>
    <body>
        <div class="menu">

        </div>
        <div class="atendimento">
            <h3>
                Serviço em sessão
            </h3>
            <select name="servico" id="selecionarAtendimento">
                <option value="" disabled>Selecione um Serviço</option>
                <c:forEach var="servico" items="${servicos }">
                	<option value="${servico.id }">${servico.nome }</option>
                </c:forEach>	
            </select>            
        </div>
        <div class="selecionarSenha">
            <h3>
                Selecionar Senha
            </h3>
            <select name="" id="selecionarSenha">
                <option value="" disabled>Selecionar Senha</option>
            </select> 
            <input id="botaoChamar" type="submit" value="Chamar">
            <input id="botaoFinalizar" type="submit" value="Finalizar">
        </div>
        <div class="encaminharSenha">
            <h3>
                Selecionar Encaminhamento
            </h3>
            <select name="" id="selecionarServicoEncaminhamento">
                <option value="">Encaminhar</option>
                <option value="autenticacao">Xerox</option>,
                <option value="autenticacao">Caixa</option>
            </select> 
            <input id="botaoEncaminhar" type="submit" value="Encaminhar">
        </div>
        <span>
            <p>Selecione o serviço que deseja realizar atendimento.</p>
            <p>Após selecionar, você pode escolher a senha que deseja chamar<br>
            ou clicar em chamar para atender a próxima senha em sequência.</p>
        </span>
        <div id="ajaxGetUserServletResponse"></div>
    </body>
</html>