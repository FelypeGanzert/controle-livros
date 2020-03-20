# Controle-livros
 Sistema de controle pessoal para cadastro de Livros, utilizando Servlets, JSP e Taglibs.

## O que é possível fazer
O úsuario pode estar cadastrando livros, bem como editando e removendo os mesmos. A informações solicitadas no cadastrado do livro são: título, autor, total de páginas, páginas lidas, url da imagem de capa, sendo somente os dois primeiros itens obrigatórios.
Ainda é possível através da página de listar todos os livros utilizar uma caixa de pesquisa para filtrar por título os livros e até mesmo alterar entre dois modos de exibição diferentes.

## Pré-Requisitos
* [ConnectionFactory.java](https://github.com/FelypeGanzert/controle-livros/blob/master/src/br/com/felype/connection/ConnectionFactory.java) - As varíaveis url, user e password devem conter as propriedades do seu sistema
* O Banco de Dados MySQL foi criado utilizando esse script:
```mySQL
CREATE TABLE IF NOT EXISTS `livros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `totalPaginas` int DEFAULT NULL,
  `paginaslidas` int DEFAULT '0',
  `urlImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) default charset = utf8mb4;
```


## Status
- [x] Conexão com o Banco de Dados através do JDBC
- [x] Implementação das regras para adicionar, editar e remover livros no LivroDao
- [x] Desenvolvimento do FrontEnd (UI)
   
   Regras de Negócio:
- [x] Listagem dos livros cadastrados
- [x] Cadastrar novo livro
- [x] Editar Livro Existente
- [x] Excluir Livro
   
   Melhorias:
- [x] Adicionar URL da capa no DB e nas regras de negócio
- [x] Permitir outro modo de exibição dos livros (somente capa e título)
- [x] Adicionar caixa de pesquisa para filtrar os livros por título


## Agradecimentos
Os conceitos que estou aplicando nesse projeto foram todos provenientes da apostila da Caelum caelum-java-web-fj21. Até o momento de início desse projeto, eu li somente até o capítulo 8:
1. ENFRENTANDO	O	JAVA	NA	WEB
2. BANCOS	DE	DADOS	E	JDBC
3. O	QUE	É	JAVA	EE?
4. NOVO	PROJETO	WEB	USANDO	ECLIPSE
5. SERVLETS
6. JAVASERVER	PAGES
7. USANDO	TAGLIBS
8. TAGS	CUSTOMIZADAS	COM	TAGFILES

Ainda restam 11 capítulos da apostila. Entretanto quis colocar o que foi aprendido até o momento em um projeto desenvolvido por conta própria. Portanto acredito que certos caminhos adotados não sejam os melhores possíveis. Entretanto esse é o meu primeiro projeto Java WEB, dessa forma o intuito é mais ser uma fonte de aprendizagem. Logo mais pretendo ler os demais capítulos e melhorar ainda mais! 
