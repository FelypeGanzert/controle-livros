package br.com.felype.modelos;


public class Livro {
	private int id;
	private String titulo;
	private String autor;
	private int totalPaginas;
	private int paginasLidas;

	public Livro() {
	}
	
	public Livro(String titulo, String autor, int totalPaginas) {
		this.titulo = titulo;
		this.autor = autor;
		this.totalPaginas = totalPaginas;
		paginasLidas = 0;
	}

	public Livro(String titulo, String autor, int totalPaginas, int paginasLidas) {
		this.titulo = titulo;
		this.autor = autor;
		this.totalPaginas = totalPaginas;
		this.paginasLidas = paginasLidas;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public int getTotalPaginas() {
		return totalPaginas;
	}

	public void setTotalPaginas(int totalPaginas) {
		this.totalPaginas = totalPaginas;
	}

	public int getPaginasLidas() {
		return paginasLidas;
	}

	public void setPaginasLidas(int paginasLidas) {
		this.paginasLidas = paginasLidas;
	}
	
	public String toString() {
		return "Id: "+ getId() + ", Titulo: " + getTitulo() +
				", Autor: " + getAutor() +
				", Páginas: " + getTotalPaginas() +
				", Lidas: " + getPaginasLidas();
	}
}
