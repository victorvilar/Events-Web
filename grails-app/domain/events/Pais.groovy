package events

class Pais extends Localidade {
	
	String nome
	
	static constraints = {
		nome(nullable:false, blank:false)
	}
	
	String toString(){
		nome
	}
	
	static hasMany = [estado:Estado]
}
