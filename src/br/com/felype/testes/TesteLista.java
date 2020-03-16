package br.com.felype.testes;

import java.util.List;

import br.com.felype.modelos.Livro;
import br.com.felype.modelos.LivroDao;

public class TesteLista {

	public static void main(String[] args) {
		LivroDao dao = new LivroDao();

		List<Livro> livros = dao.getLista();

		for (Livro livro : livros) {
			try {
				System.out.println(livro);
				System.out.println("============");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		dao.close();
	}
}
