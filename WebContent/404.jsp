<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/mobile.css"/>">
    <script src="https://kit.fontawesome.com/088ed5f28c.js" crossorigin="anonymous"></script>
    <title>404 | Não encontrado</title>
    <style>
        section#error {
            height: 60vh;
            min-height: 500px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: url('<c:url value="/img/woman-book.jpg"/>') no-repeat center center /cover;
            box-shadow: inset 0 0 0 100vw rgba(2, 61, 150, 0.4);
            color: #fff;
            text-shadow: #333 2px 2px 2px;
            font-size: 1.5rem;
        }
    </style>
</head>

<body>
    <c:import url="cabecalho.jsp"></c:import>

    <section id="error">
        <div>
            <h2>Opssss</h2>
            <p>Página não encontrada.</p>
        </div>
    </section>

    <c:import url="rodape.jsp"></c:import>
</body>

</html>