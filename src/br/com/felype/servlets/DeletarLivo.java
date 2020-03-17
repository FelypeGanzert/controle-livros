package br.com.felype.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.felype.modelos.Livro;
import br.com.felype.modelos.LivroDao;

/**
 * Servlet implementation class CadastrarLivro
 */
@WebServlet("/deletar")
public class DeletarLivo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		LivroDao dao = new LivroDao();
		try {
			// buscando os parâmetros no request
			int id = Integer.parseInt(request.getParameter("id"));
			String titulo = request.getParameter("titulo");
			

			// monta um objeto livro somente com a id, pois ela é a chave primária
			Livro livro = new Livro();
			livro.setId(id);
			

			// Deleta o Livro
			dao.remove(livro);

			response.sendRedirect("lista.jsp?resp=sucessDelete&titulo="+titulo);
		} catch (IOException e) {
			try {
				response.sendRedirect("lista.jsp?resp=failureDelete");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			dao.close();
		}

	}

}
