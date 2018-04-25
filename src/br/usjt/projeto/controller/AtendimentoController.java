package br.usjt.projeto.controller;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import br.usjt.projeto.dao.SenhaDAO;
import br.usjt.projeto.entity.Atendimento;
import br.usjt.projeto.entity.Senha;
import br.usjt.projeto.service.AtendimentoService;
import br.usjt.projeto.service.ServicoService;

@Controller
@Transactional
public class AtendimentoController {

	@Autowired
	private SenhaDAO senhaDAO;

	@Autowired
	private ServicoService servicoService;
	
	@Autowired
	private AtendimentoService atendimentoService;

	@RequestMapping("/painel_senhas")
	public String painelDeSenhas() {
		return "atendimento";
	}
	
	@RequestMapping("/painel_atendimento")
	public String painelAtendimento(Model model) {
		model.addAttribute("servicos", servicoService.carregaServicos());
		return "atendente";
	}
	
	@ResponseBody
	@RequestMapping(value = "/buscar_senha", method = RequestMethod.POST)
    public List<Senha> listar(@RequestParam int senha) {
        System.out.println(senha);
        List<Senha> senhas = senhaDAO.carregarSenhasinativas(senha);
        return senhas;
    }
	
	@ResponseBody
	@RequestMapping(value = "/cadastrar_atendimento", method = RequestMethod.POST)
	public int cadastrarAtendimento(@RequestParam int senha) {
		try {
			atendimentoService.geraAtendimento(senha);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return senha;
	}
	
	@ResponseBody
	@RequestMapping(value = "/verifica_senhas")
	public List<Atendimento> chamarSenha() {
		List<Atendimento> atendimento = atendimentoService.buscaProximaSenha();
		return atendimento;
	}
}
