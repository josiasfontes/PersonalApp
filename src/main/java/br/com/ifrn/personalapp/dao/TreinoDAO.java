package br.com.ifrn.personalapp.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.ifrn.personalapp.models.Treino;

@Repository
public interface TreinoDAO extends JpaRepository<Treino, Long> {

	public Treino findByidTreino(Long id);

}
