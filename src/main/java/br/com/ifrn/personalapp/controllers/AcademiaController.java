package br.com.ifrn.personalapp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import br.com.ifrn.personalapp.models.Academia;
import br.com.ifrn.personalapp.service.AcademiaService;

@RestController
public class AcademiaController {

	@Autowired AcademiaService academiaService;

	@RequestMapping(value = "academia/criar", method = RequestMethod.GET)
	public ModelAndView formCriar(@ModelAttribute Academia academia) {
		return new ModelAndView("academia/form");
	}

	@RequestMapping(value = "academia/criar", method = RequestMethod.POST)
	public ModelAndView criarAcademia(@ModelAttribute Academia academia) {
		if (academia.getIdAcademia() == null) {																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								
			academiaService.salvarAcademia(academia);
		}else{
			academiaService.atualizarAcademia(academia);
		}
		return new ModelAndView("academia/listar","academias", academiaService.academias());
	}
	
	//editar
	@RequestMapping(value = "academia/atualizar/{id}")
	public ModelAndView updateAcademia(@PathVariable Academia academia, @PathVariable Long id) {
		academia.setIdAcademia(id);
		academiaService.atualizarAcademia(academia);
		return new ModelAndView("academia/listar","academias", academiaService.academias());
	}
	
	//deletar
	@RequestMapping(value = "academia/deletar/{id}")
	public ModelAndView deletarAcademia(@PathVariable Long id) {
		academiaService.removerAcademia(id);
		return new ModelAndView("academia/listar","academias", academiaService.academias());
	}
	
	@RequestMapping(value = "academia/editar/{id}", method=RequestMethod.GET)
	public ModelAndView formEditar(@PathVariable("id") Long id) {
		return new ModelAndView("academia/form", "academia", academiaService.getById(id));
	}
	
	@RequestMapping(value = "academia/listar", method = RequestMethod.GET) 
	public ModelAndView listar() {
		return new ModelAndView("academia/listar", "academias", academiaService.academias());
	}
		
	// API Rest
	@RequestMapping(value = "api/academias", method = RequestMethod.GET)
	public List<Academia> academiasApi() {
		return academiaService.academias();
	}
	
	@RequestMapping(value = "api/academia/{id}", method = RequestMethod.GET)
	public Academia academiaApi(@PathVariable("id") Long id) {
		return academiaService.getById(id);
	}
	
	
	
	
}
