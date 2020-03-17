<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/cadastrar.css">
<link rel="stylesheet" href="css/mobile.css">
<script src="https://kit.fontawesome.com/088ed5f28c.js"
	crossorigin="anonymous"></script>
<title>Cadastrar Livros</title>
</head>

<body>
	<c:import url="cabecalho.jsp"></c:import>

	<div class="container">
		<c:choose>
			<c:when test="${param.resp == 'sucess'}">
            <div class="sucess">
            	${param.titulo} cadastrado com sucesso.
            </div>
         </c:when>

			<c:when test="${param.resp == 'failure'}">
            <div class="failure">
            	Desculpe, houve um erro durante o cadastrado.
            </div>
         </c:when>

		</c:choose>

		<h2>Adicionar Livro</h2>
		<form id="cadastrar-livro" action="cadastrar" method="POST">
			<input type="hidden" name="id">

			<div class="input-group" id="container-titulo">
				<label for="titulo">Título</label> <input type="text" name="titulo"
					id="titulo" autocomplete="off" required="">
			</div>

			<div class="input-group" id="container-autor">
				<label for="autor">Autor</label> <input type="text" name="autor"
					id="autor" autocomplete="off" required="">
			</div>

			<div class="input-group" id="container-paginas">
				<label for="paginas">Total de Páginas</label> <input type="number"
					name="paginas" id="paginas" autocomplete="off">
			</div>

			<div class="input-group" id="container-pagina-atual">
				<label for="pagina-atual">Página Atual</label> <input type="number"
					name="pagina-atual" id="pagina-atual" autocomplete="off">
			</div>

			<div class="input-group" id="container-url-img">
				<label for="uel-img">URL da Capa</label> <input type="text"
					name="uel-img" id="uel-img" autocomplete="off">
			</div>

			<div class="buttons-group" id="container-buttons">
				<button type="submit">Cadastrar</button>
			</div>
		</form>
	</div>



	<c:import url="rodape.jsp"></c:import>
</body>

</html>