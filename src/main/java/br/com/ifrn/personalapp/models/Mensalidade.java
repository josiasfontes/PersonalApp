package br.com.ifrn.personalapp.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Mensalidade {

	@Id @GeneratedValue
	@Column(name="ID_MENSALIDADE")
	public Long idMensalidade;
	
	@Column(name="VALOR")
	public double valor;
	
	@Column(name="ULTIMO_PAGAMENTO")
	@Temporal(TemporalType.TIMESTAMP)
	private Date ultimoPagamento;  

	@Column(name="DATA_VENCIMENTO")
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataVencimento;
	
	@Column(name="STATUS")
	public String status;
	
	public Mensalidade(){
		setDataVencimento(new Date());
		setUltimoPagamento(new Date());
	}

	public Long getIdMensalidade() {
		return idMensalidade;
	}

	public void setIdMensalidade(Long idMensalidade) {
		this.idMensalidade = idMensalidade;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public Date getUltimoPagamento() {
		return ultimoPagamento;
	}

	public void setUltimoPagamento(Date ultimoPagamento) {
		this.ultimoPagamento = ultimoPagamento;
	}

	public Date getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Date dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}