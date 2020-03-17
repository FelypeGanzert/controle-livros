<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav id="main-nav">
	<div class="container">
		<div class="logo">
			<h1>
				<i class="fas fa-book"></i> Lista de Livros
			</h1>
		</div>
		<div id="main-menu">
			<ul>
				<li><a href="<c:url value="/index.jsp"/>" >Início</a></li>
				<li><a href="<c:url value="/cadastrar.jsp"/>" >Cadastrar</a></li>
				<li><a href="<c:url value="/lista.jsp"/>" >Listar</a></li>
			</ul>
		</div>

	</div>
</nav>