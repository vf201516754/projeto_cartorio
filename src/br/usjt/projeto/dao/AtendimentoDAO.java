package br.usjt.projeto.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.usjt.projeto.entity.Atendimento;
import br.usjt.projeto.entity.Senha;

@Repository
public class AtendimentoDAO {
	
	@PersistenceContext
	EntityManager manager;
	private Connection conn;
	
	@Autowired
	public AtendimentoDAO(DataSource dataSource) throws IOException {
		try {
			this.conn = dataSource.getConnection();
		} catch (SQLException e) {
			throw new IOException(e);
		}
	}
	
	public Atendimento gerarAtendimento(Atendimento novoAtendimento) {
		manager.persist(novoAtendimento);
		return novoAtendimento;
	}

	@SuppressWarnings("unchecked")
	public List<Atendimento> carregarSenhaPainel() {
		Query query = manager.createQuery("select a from Atendimento a inner join a.senha where a.senha.isActive = 1");
		query.setMaxResults(1);
		return query.getResultList();
	}
}
