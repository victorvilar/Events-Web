package events

class Estado extends Localidade {
	
	String nome
	
	static constraints = {
		nome(nullable:false, blank:false)
	}
	
	String toString(){
		nome
	}
	
	static belongsTo = [pais:Pais]
	static hasMany = [cidade:Cidade]
}
