<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mobile.css">
    <script src="https://kit.fontawesome.com/088ed5f28c.js" crossorigin="anonymous"></script>
    <title>Lista de Livros</title>
</head>

<body>
    <c:import url="cabecalho.jsp"></c:import>

    <header id="showcase">
        <div>
            <h2>Lista de Livros</h2>
            <p>Cadastre e controle suas leituras e tenha seus dados salvos</p>
        </div>
    </header>

    <section id="about">
        <div>
            <h2>Sobre</h2>
            <p>
                Esse projeto foi desenvolvido para colocar em prática os conteúdos iniciais sobre Java WEB: JSP,
                Servlets, Taglibs. Além disso foi persistido as informações em um banco de dados através do JDBC.
            </p>
            <p>Não posso deixar de mencionar que toda a interface do usúario foi desenvolvida através de conhecimentos em HTML, CSS e um pouco de JavaScript, tudo sem o uso de nenhum framework externo.</p>
        </div>
        <div class="img-computer"></div>
    </section>

    <c:import url="rodape.jsp"></c:import>
</body>

</html>