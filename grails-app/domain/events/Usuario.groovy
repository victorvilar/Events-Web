package events

class Usuario extends ListaUsuario {
	
    static constraints = {
    	nome(nullable:false, blank:false)
		email(nullable:false, blank:false, email:true)
	}
	
	static belongsTo = [localidade:Localidade]
	static hasMany = [localidadeinteresse:LocalidadeInteresse, temainteresse:TemaInteresse]
	
	String toString(){
		nome
	}
}
