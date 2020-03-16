package br.com.felype.testes;


import br.com.felype.modelos.Livro;
import br.com.felype.modelos.LivroDao;


public class TesteInsere {

	public static void main(String[] args) {
		// pronto para gravar
		Livro l = new Livro();
		l.setTitulo("Sapiens");
		l.setAutor("Yuval Noah Harari");
		l.setTotalPaginas(300);
		l.setPaginasLidas(50);
		
		Livro l2 = new Livro();
		l2.setTitulo("Fundação");
		l2.setAutor("Isaac Asimov");
		l2.setTotalPaginas(300);
		

		Livro l3 = new Livro();
		l3.setTitulo("Eu, Robô");
		l3.setAutor("Isaac Asimov");
		
		// gera uma instancia do Livro para gravar no DB
		LivroDao dao = new LivroDao();
		
		dao.adiciona(l3);
		
		System.out.println("Gravando!");
		
		// fecha a conexão
		dao.close();

	}

}
