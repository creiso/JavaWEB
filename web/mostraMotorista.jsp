<%-- 
    Document   : mostraMotorista
    Created on : 06/05/2022, 19:42:44
    Author     : Lab01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Motorista"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Motorista</title>
        <!--declaração de variavel-->
        <%!
            Motorista motorista = new Motorista();
            
        %>
    </head>
    <body>
        <h1>Motorista</h1>
        <!--Java-->
        <% 
        motorista.setNome(request.getParameter("nome"));
        motorista.setCpf(Long.parseLong(request.getParameter("cpf")));
        motorista.setRg(Long.parseLong(request.getParameter("rg")));
        motorista.setTelefone(Long.parseLong(request.getParameter("telefone")));
        motorista.setEndereco(request.getParameter("local"));
        %>
        <p> Nome: <%= motorista.getNome() %></p>
        <p> RG: <%= motorista.getRg()%></p>
        <p> CPF: <%= motorista.getCpf()%></p>
        <p> Telefone: <%= motorista.getTelefone()%></p>
        <p> Endereço: <%= motorista.getEndereco()%></p>
        <a href="formMotorista.html">Voltar</a>     
    </body>
</html>
