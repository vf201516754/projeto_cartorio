<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Atendimento</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="js/painel.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="inc/css/style.css" />
</head>
<body>
    <div class="atendimento">
        <h3>
            Atendimento
            <span><h4></h4></span>
            <h2 id="tipoSenha"></h2>
            <h1 id="codSenha"></h1>
            <h5 id="guiche">Balcão 11</h5>
        </h3>
    </div>
    <div class="caixa">
        <h3>
            Caixa
            <span><h4></h4></span>
            <h2>Preferêncial</h2>
            <h1>NF152P</h1>
            <h5>CAIXA 04</h5>
        </h3>
    </div>
    <div class="ultimas">
        <h3>
            Últimas Senhas
            <span><h4></h4></span>
        </h3>
        <table>
            <tr>
                <th>SENHA</th>
                <th>NÚMERO</th>
                <th>GUICHÊ</th>
            </tr>
            <tr>
                <td>Preferêncial</td>
                <td>DV054P</td>
                <td>GUICHÊ 10</td>
            </tr>
            <tr>
                <td>Normal</td>
                <td>UE002N</td>
                <td>GUICHÊ 05</td>
            </tr>
            <tr>
                <td>Preferêncial</td>
                <td>CS544P</td>
                <td>GUICHÊ 02</td>
            </tr>
            <tr>
                <td>Normal</td>
                <td>AF522N</td>
                <td>GUICHÊ 15</td>
            </tr>
        </table>
    </div>
</body>
</html>