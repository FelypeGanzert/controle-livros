package br.com.felype.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import br.com.felype.connection.ConnectionFactory;

public class LivroDao {
	// a conexão com o banco de dados
	private Connection connection;

	// construtor
	public LivroDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	// fecha a conexão com o banco de dados
	public void close() {
		try {
			this.connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	// Adiciona o livro no DB
	public void adiciona(Livro livro) {
		String sql = "insert into livros " + "(titulo, autor, totalPaginas, paginasLidas)"
				+ " values (?, ?, ?, ?)";
		try {
			// prepared statement para inserir
			PreparedStatement stmt = connection.prepareStatement(sql);

			// seta os valores
			// Titulo e autor serão obrigatórios
			stmt.setString(1, livro.getTitulo());
			stmt.setString(2, livro.getAutor());

			// Verifica se há algo no totalPaginas
			try {
				stmt.setInt(3, livro.getTotalPaginas());
			} catch (NullPointerException e) {
				System.out.println("Não informado total de páginas");
				stmt.setNull(3, Types.INTEGER);
			}

			// Verifica se há algo na pagina atual
			try {
				stmt.setInt(4, livro.getPaginasLidas());
			} catch (NullPointerException e) {
				System.out.println("Não informado pagina atual");
				stmt.setNull(4, Types.INTEGER);
			}

			// executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	// Retorna uma lista com todos os livros cadastrados
	public List<Livro> getLista() {
		try {
			List<Livro> livros = new ArrayList<Livro>();
			PreparedStatement stmt = this.connection.prepareStatement("select * from livros");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto Livro
				Livro livro = new Livro();
				livro.setId(rs.getInt("id"));
				livro.setTitulo(rs.getString("titulo"));
				livro.setAutor(rs.getString("autor"));
				livro.setTotalPaginas(rs.getInt("totalPaginas"));
				livro.setPaginasLidas(rs.getInt("paginasLidas"));

				// adicionando o objeto à lista
				livros.add(livro);
			}
			rs.close();
			stmt.close();
			return livros;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	// Altera um livro usando o id como parâmetro
	public void altera(Livro livro) {
		String sql = "update livros set titulo=?, autor=?, totalPaginas=?,"
				+ "paginasLidas=? where id=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			// seta os valores
			stmt.setString(1, livro.getTitulo());
			stmt.setString(2, livro.getAutor());
			stmt.setInt(3, livro.getTotalPaginas());
			stmt.setInt(4, livro.getPaginasLidas());
			stmt.setInt(5, livro.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Livro livro) {
		try {
			PreparedStatement stmt = connection.prepareStatement("delete from livros where id=?");
			stmt.setInt(1, livro.getId());
			int rowsAffected = stmt.executeUpdate();
			System.out.println(rowsAffected + " rowns affected");
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
