package events

class Tema extends TemaInteresse {
	
	String descricao
	
    static constraints = {
		descricao(nullable:false, blank:false)
    }
	
	String toString(){
		descricao
	}
}
