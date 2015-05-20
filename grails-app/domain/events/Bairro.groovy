package events

class Bairro extends Localidade{
	
	String nome
	
	static constraints = {
		nome(nullable:false, blank:false)
	}
	
	String toString(){
		nome
	}
	
	static belongsTo = [cidade:Cidade]
}
