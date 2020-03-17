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
@WebServlet("/cadastrar")
public class CadastrarLivro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		LivroDao dao = new LivroDao();
		try {
			// busca o writer
			// PrintWriter out = response.getWriter();
			// buscando os parâmetros no request
			String titulo = request.getParameter("titulo");
			String autor = request.getParameter("autor");
			int paginas;
			try {
				paginas = Integer.parseInt(request.getParameter("paginas"));
			} catch (Exception e) {
				paginas = 0;
			}

			int paginaAtual;
			try {
				paginaAtual = Integer.parseInt(request.getParameter("pagina-atual"));
			} catch (Exception e) {
				paginaAtual = 0;
			}

			// monta um objeto livro
			Livro livro = new Livro();
			livro.setTitulo(titulo);
			livro.setAutor(autor);
			livro.setTotalPaginas(paginas);
			livro.setPaginasLidas(paginaAtual);

			// Salva o Livro
			dao.adiciona(livro);

			response.sendRedirect("cadastrar.jsp?resp=sucess&titulo="+titulo);
		} catch (IOException e) {
			try {
				response.sendRedirect("cadastrar.jsp?resp=failure");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			dao.close();
		}

	}

}
