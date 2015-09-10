package br.com.ifrn.personalapp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import br.com.ifrn.personalapp.models.Endereco;
import br.com.ifrn.personalapp.service.EnderecoService;
import br.com.ifrn.personalapp.service.PessoaService;

@RestController
public class EnderecoController {

	@Autowired
	EnderecoService enderecoService;
	
	@Autowired
	PessoaService pessoaService;

	@RequestMapping(value = "endereco/criar", method = RequestMethod.GET)
	public ModelAndView formCriar(@ModelAttribute Endereco endereco) {
		return new ModelAndView("endereco/form");
	}

	@RequestMapping(value = "endereco/criar", method = RequestMethod.POST)
	public void criarEndereco(@ModelAttribute Endereco endereco) {
		if (endereco.getIdEndereco() == null) {
			enderecoService.salvarEndereco(endereco);
		} else {
			enderecoService.atualizarEndereco(endereco);
		}
	}
	
	@RequestMapping(value = "endereco/editar/{id}", method=RequestMethod.GET)
	public ModelAndView formEditar(@PathVariable("id") Long id) {
		return new ModelAndView("endereco/form", "endereco", enderecoService.getById(id));
	}
	
	// API Rest
	@RequestMapping(value = "api/enderecos", method = RequestMethod.GET)
	public List<Endereco> enderecosApi() {
		return enderecoService.enderecos();
	}
	
	@RequestMapping(value = "api/endereco/{id}", method = RequestMethod.GET)
	public Endereco enderecoApi(@PathVariable("id") Long id) {
		return enderecoService.getById(id);
	}
	
	@RequestMapping(value = "endereco/listar", method = RequestMethod.GET) 
	public ModelAndView listar() {
		return new ModelAndView("endereco/listar", "pessoas", pessoaService.pessoasAtivas());
	}

}
