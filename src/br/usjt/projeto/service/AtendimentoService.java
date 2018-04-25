package br.usjt.projeto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.projeto.dao.AtendimentoDAO;
import br.usjt.projeto.entity.Atendimento;
import br.usjt.projeto.entity.Senha;

@Service
public class AtendimentoService {
	
	@Autowired
	private AtendimentoDAO dao;
	@Autowired
	private SenhaService senhaService;

	public Atendimento geraAtendimento(int id) {
		Senha senha = senhaService.carregarSenha(id);
		Atendimento novoAtendimento = new Atendimento();
		novoAtendimento.setSenha(senha);
		novoAtendimento.setIsActive(1);
		return dao.gerarAtendimento(novoAtendimento);
	}

	public List<Atendimento> buscaProximaSenha() {
		return dao.carregarSenhaPainel();
	}
}
