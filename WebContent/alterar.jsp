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

		<h2>Adicionar Livro</h2>
		<form id="cadastrar-livro" action="alterar" method="POST">
			<input type="hidden" name="id" value="${param.id}">

			<div class="input-group" id="container-titulo">
				<label for="titulo">T�tulo</label> <input type="text" name="titulo"
					id="titulo" autocomplete="off" required=""  value="${param.titulo}">
			</div>

			<div class="input-group" id="container-autor">
				<label for="autor">Autor</label> <input type="text" name="autor"
					id="autor" autocomplete="off" required=""  value="${param.autor}">
			</div>

			<div class="input-group" id="container-paginas">
				<label for="paginas">Total de P�ginas</label> <input type="number"
					name="paginas" id="paginas" autocomplete="off" value="${param.paginas}">
			</div>

			<div class="input-group" id="container-pagina-atual">
				<label for="pagina-atual">P�gina Atual</label> <input type="number"
					name="pagina-atual" id="pagina-atual" autocomplete="off" value="${param.paginaAtual}">
			</div>

			<div class="input-group" id="container-url-img">
				<label for="url-image">URL da Capa</label> <input type="text"
					name="url-image" id="url-image" autocomplete="off" value="${param.urlImage}">
			</div>

			<div class="buttons-group" id="container-buttons">
				<button type="submit">Alterar</button>
			</div>
		</form>
	</div>



	<c:import url="rodape.jsp"></c:import>
</body>

</html>