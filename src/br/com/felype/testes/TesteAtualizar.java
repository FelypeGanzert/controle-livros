package br.com.felype.testes;


import br.com.felype.modelos.Livro;
import br.com.felype.modelos.LivroDao;

public class TesteAtualizar {

	public static void main(String[] args) {
		LivroDao dao = new LivroDao();
		
		Livro l = new Livro();
		l.setId(1);
		l.setTitulo("Pó de Parede");
		l.setAutor("Carol Bensimon");
		
		dao.altera(l);
		
		System.out.println("Livro alterado");
		
		dao.close();

	}

}
