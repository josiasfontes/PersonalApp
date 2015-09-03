package br.com.ifrn.personalapp.service;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.ifrn.personalapp.dao.TreinoDAO;
import br.com.ifrn.personalapp.models.Treino;


@Service
public class TreinoService {

	private EntityManager entityManager;
	private TreinoDAO treinoDAO;

	@Autowired
	public TreinoService(EntityManager entityManager, TreinoDAO treinoDAO) {
		this.entityManager = entityManager;
		this.treinoDAO = treinoDAO;
	}
	
	public Treino getById(Long id) {
		return treinoDAO.findOne(id);
	}
	
	public Treino salvarTreino(Treino treino) {
		return treinoDAO.save(treino);
	}	
	
	public void removerTreino(Long id) {
		treinoDAO.delete(id);
	}
	
	public Treino atualizarTreino(Treino treino) {
		return entityManager.merge(treino);
	}
	
	public List<Treino> treinos() {
		return treinoDAO.findAll();
	}
}
