package br.com.felype.testes;

import br.com.felype.modelos.Livro;
import br.com.felype.modelos.LivroDao;

public class TesteRemover {
	public static void main(String[] args) {
		LivroDao dao = new LivroDao();

		Livro l = new Livro();
		l.setId(12);

		dao.remove(l);

		System.out.println("Livro removido");

		dao.close();

	}
}
