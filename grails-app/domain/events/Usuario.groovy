package events

import java.util.Date;

class Usuario {
	
	String nome
	Date dataNascimento
	String telefone
	String email
	
    static constraints = {
    	nome(nullable:false, blank:false)
		email(nullable:false, blank:false, email:true)
	}
	
	static belongsTo = [localidade:Localidade]
	static hasMany = [localidadeinteresse:Localidade, temainteresse:Tema]
	
	String toString(){
		nome
	}
}
