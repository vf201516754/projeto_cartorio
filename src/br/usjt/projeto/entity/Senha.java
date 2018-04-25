package br.usjt.projeto.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@Entity
public class Senha {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotNull(message = "Campo numero nao pode ser nulo.")
	private int numero;

	@NotNull(message = "Campo codigo nao pode ser nulo.")
	private String codigo;

	@Column(name = "data_abertura")
	private Date dataAbertura;

	@Column(name = "data_fechamento")
	private Date dataFechamento;
	
	@NotNull(message = "Campo isActive nao pode ser nulo.")
	private int isActive;

	@ManyToOne
	@JoinColumn(name = "id_fila")
	private Fila fila;
	
	@ManyToOne
	@JoinColumn(name = "id_servico")
	private Servico servico;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public Date getDataAbertura() {
		return dataAbertura;
	}

	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	public Date getDatFechamento() {
		return dataFechamento;
	}

	public void setDataFechamento(Date dataFechamento) {
		this.dataFechamento = dataFechamento;
	}
	
	public Servico getServico() {
		return servico;
	}

	public void setServico(Servico servico) {
		this.servico = servico;
	}

	public Fila getFila() {
		return fila;
	}

	public void setFila(Fila fila) {
		this.fila = fila;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "Senha [id=" + id + ", numero=" + numero + ", codigo=" + codigo + ", dataAbertura=" + dataAbertura
				+ ", dataFechamento=" + dataFechamento + ", fila=" + fila + "]";
	}

}