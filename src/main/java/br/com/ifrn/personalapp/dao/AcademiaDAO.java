package br.com.ifrn.personalapp.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.ifrn.personalapp.models.Academia;

@Repository
public interface AcademiaDAO extends JpaRepository<Academia, Long> {
	  
	public Academia findByRazaosocial(String razaoSocial);
}