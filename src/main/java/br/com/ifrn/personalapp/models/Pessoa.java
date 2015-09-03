package br.com.ifrn.personalapp.models;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Pessoa {

	@Id	@GeneratedValue
	@Column(name = "ID_PESSOA")
	public Long idPessoa;

	@Column(name = "NOME", nullable = false)
	public String nome;

	@Column(name = "CPF", nullable = false)
	public String cpf;

	@Column(name = "SEXO", nullable = false)
	public String sexo;

	@Column(name = "IDADE", nullable = false)
	public int idade;

	@Column(name = "EMAIL", nullable = false)
	public String email;
	
	@Column(name = "SENHA", nullable = false)
	public String senha;

	@Column(name = "TELEFONE", nullable = false)
	public int telefone;
	
	@Column(name="DATA")
	@Temporal(TemporalType.DATE)
	private Date dataCadastro;

	@ManyToOne
	@JoinColumn(name = "ACADEMIA_ID_ACADEMIA")
	private Academia academia;

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "ENDERECO_ID_ENDERECO")
	private Endereco endereco;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name="MENSALIDADE_ID_MENSALIDADE")
	private Mensalidade mensalidade;
	
	public Mensalidade getMensalidade() {
		return mensalidade;
	}

	public void setMensalidade(Mensalidade mensalidade) {
		this.mensalidade = mensalidade;
	}

	public Pessoa() {
		endereco = new Endereco();
		academia = new Academia();
		mensalidade = new Mensalidade();
		setDataCadastro(new Date());
	}

	public Long getIdPessoa() {
		return idPessoa;
	}

	public void setIdPessoa(Long idPessoa) {
		this.idPessoa = idPessoa;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public int getTelefone() {
		return telefone;
	}

	public void setTelefone(int telefone) {
		this.telefone = telefone;
	}

	public Date getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public Academia getAcademia() {
		return academia;
	}

	public void setAcademia(Academia academia) {
		this.academia = academia;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	
}
