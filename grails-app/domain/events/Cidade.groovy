package events

class Cidade extends Localidade {
	
	String nome
	
	static constraints = {
		nome(nullable:false, blank:false)
	}
	
	String toString(){
		nome
	}
}
