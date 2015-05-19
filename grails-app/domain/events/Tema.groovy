package events

class Tema {
	
	String descricao
	
    static constraints = {
		descricao(nullable:false, blank:false)
    }
	
	String toString(){
		descricao
	}
}
