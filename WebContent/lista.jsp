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
<link rel="stylesheet" href="css/listar.css">
<link rel="stylesheet" href="css/mobile.css">
<link rel="stylesheet" href="css/cadastrar.css">
<script src="https://kit.fontawesome.com/088ed5f28c.js"
	crossorigin="anonymous"></script>
<title>Lista de Livros</title>
</head>

<body>
	<!-- Aqui é pego os Livros do Banco de Dados -->
	<!-- com a criação do DAO -->
	<jsp:useBean id="dao" class="br.com.felype.modelos.LivroDao" />

	<c:import url="cabecalho.jsp"></c:import>

	<div class="container">
		<c:choose>
			<c:when test="${param.resp == 'sucess'}">
				<div class="sucess">${param.titulo} alterado com sucesso.</div>
			</c:when>

			<c:when test="${param.resp == 'failure'}">
				<div class="failure">Desculpe, houve um erro durante a
					alteração.</div>
			</c:when>
			
		</c:choose>
		<h2>Livros Cadastrados</h2>
		<ul id="lista-livros" class="all-infos">

			<!--  percorre os contatos montando as linhas da tabela -->
			<c:forEach var="livro" items="${dao.lista}">

				<li><input type="hidden" class="id" value="${livro.id}">
					<div class="title">
						<span class="titulo">${livro.titulo}</span><span class="autor">${livro.autor}</span>
					</div>
					<div class="pages">
						<span class="pagina-atual">${livro.paginasLidas}</span> / <span
							class="paginas">${livro.totalPaginas}</span>
					</div> <!--  Calcule para saber o quanto foi lido --> <c:set
						var="porcent"
						value="${livro.paginasLidas * 100 / livro.totalPaginas}" />
					<div class="progress">
						<div style="width: <c:out value="${porcent}%;" />"></div>
					</div>
					<div class="edit-remove">
						<i class="fas fa-pen edit-livro"></i> <i
							class="fas fa-trash remove-livro"></i>
					</div></li>

			</c:forEach>

		</ul>
	</div>

	<!--  Script JS para capturar o evento de editar e excluir um livro -->
	<script>
		const UIlistaLivros = document.querySelector('#lista-livros');
		UIlistaLivros.addEventListener('click', e => {
			e.preventDefault();
			if(e.target.classList.contains('edit-livro')){
				const UIli = e.target.parentElement.parentElement;
				let id = UIli.querySelector('.id').value;
				let titulo = UIli.querySelector('span.titulo').innerText;
				let autor = UIli.querySelector('.autor').innerText;
				let paginas = UIli.querySelector('.paginas').innerText;
				let paginaAtual = UIli.querySelector('.pagina-atual').innerText;

				// Cria o formulari para envio
				const form = document.createElement('form');
				form.method = 'POST';
				form.action = 'alterar.jsp';

				let idField = document.createElement('input');
				idField.type = 'hidden';
				idField.name = 'id';
				idField.value = id;
				form.appendChild(idField);
				
				let tituloField = document.createElement('input');
				tituloField.type = 'hidden';
				tituloField.name = 'titulo';
				tituloField.value = titulo;
				form.appendChild(tituloField);
				
				let autorField = document.createElement('input');
				autorField.type = 'hidden';
				autorField.name = 'autor';
				autorField.value = autor;
				form.appendChild(autorField);
				
				let paginasField = document.createElement('input');
				paginasField.type = 'hidden';
				paginasField.name = 'paginas';
				paginasField.value = paginas;
				form.appendChild(paginasField);
				
				let paginaAtualField = document.createElement('input');
				paginaAtualField.type = 'hidden';
				paginaAtualField.name = 'paginaAtual';
				paginaAtualField.value = paginaAtual
				form.appendChild(paginaAtualField);

				document.body.appendChild(form);
				form.submit();
				
			}
			if(e.target.classList.contains('remove-livro')){
				const UIli = e.target.parentElement.parentElement;
				let id = UIli.querySelector('.id').value;
				let titulo = UIli.querySelector('span.titulo').innerText;
				
				if(window.confirm('Tem certeza que deseja deletar ' + titulo + '?')){
					// Cria o formulario para envio
					const form = document.createElement('form');
					form.method = 'POST';
					form.action = 'deletar';

					let idField = document.createElement('input');
					idField.type = 'hidden';
					idField.name = 'id';
					idField.value = id;
					form.appendChild(idField);
					
					document.body.appendChild(form);
					form.submit();
				}
			}
		})
	</script>
	<c:import url="rodape.jsp"></c:import>
</body>

</html>