package br.com.ifrn.personalapp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import br.com.ifrn.personalapp.models.Treino;
import br.com.ifrn.personalapp.service.ExercicioService;
import br.com.ifrn.personalapp.service.TreinoService;

@RestController
public class TreinoController {

	@Autowired TreinoService treinoService;
	@Autowired ExercicioService exercicioService;

	@RequestMapping(value = "treino/criar", method = RequestMethod.GET)
	public ModelAndView formCriar(@ModelAttribute Treino treino) {
		return new ModelAndView("treino/form","exercicios", exercicioService.exercicios());
	}

	@RequestMapping(value = "treino/criar", method = RequestMethod.POST)
	public ModelAndView criarTreino(@ModelAttribute Treino treino) {
		if (treino.getIdTreino() == null) {		
			System.out.println("Treino: "+ treino.getExercicios().size());
			treinoService.salvarTreino(treino);
		}else{
			treinoService.atualizarTreino(treino);
		}
		return new ModelAndView("treino/listar","treinos", treinoService.treinos());
	}
	
	//editar
	@RequestMapping(value = "treino/atualizar/{id}")
	public ModelAndView updateTreino(@PathVariable Treino treino, @PathVariable Long id) {
		treino.setIdTreino(id);
		treinoService.atualizarTreino(treino);
		return new ModelAndView("treino/listar","treinos", treinoService.treinos());
	}
	
	//deletar
	@RequestMapping(value = "treino/deletar/{id}")
	public ModelAndView deletarTreino(@PathVariable Long id) {
		treinoService.removerTreino(id);
		return new ModelAndView("treino/listar","treinos", treinoService.treinos());
	}
	
	@RequestMapping(value = "treino/editar/{id}", method=RequestMethod.GET)
	public ModelAndView formEditar(@PathVariable("id") Long id) {
		return new ModelAndView("treino/form", "treino", treinoService.getById(id));
	}
	
	// API Rest
	@RequestMapping(value = "api/treinos", method = RequestMethod.GET)
	public List<Treino> treinosApi() {
		return treinoService.treinos();
	}
	
	@RequestMapping(value = "api/treino/{id}", method = RequestMethod.GET)
	public Treino treinoApi(@PathVariable("id") Long id) {
		return treinoService.getById(id);
	}
	
	@RequestMapping(value = "treino/listar", method = RequestMethod.GET) 
	public ModelAndView listar() {
		return new ModelAndView("treino/listar", "treinos", treinoService.treinos());
	}
}
