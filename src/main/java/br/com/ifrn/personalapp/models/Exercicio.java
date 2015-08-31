package br.com.ifrn.personalapp.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Exercicio {
	
	@Id @GeneratedValue
	@Column(name="ID_EXERCICIO")
	private Long idExercicio;
	
	@Column(name="NOME")
	private String nome;
	
	public Long getIdExercicio() {
		return idExercicio;
	}
	public void setIdExercicio(Long idExercicio) {
		this.idExercicio = idExercicio;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}

}
