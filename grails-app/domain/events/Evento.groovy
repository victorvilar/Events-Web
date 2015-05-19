package events

class Evento {

	String nome
	String descricao
	Date dataInicio
	Date dataFim
	Boolean publico
	
    static constraints = {
    	nome(nullable:false, blank:false)
		dataInicio(blank:false)
		dataFim(blank:false)
	}
	
	static belongsTo = [usuario:Usuario]
	static hasMany = [convite:Convite, tema:Tema, local:Localidade]
	
	String toString(){
		nome
	}
}
