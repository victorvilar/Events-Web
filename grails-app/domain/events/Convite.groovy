package events

class Convite {

	String descricao
	Date dataEnvio
	
    static constraints = {
    }
	
	static hasOne = [evento:Evento]
	static hasMany = [listausuario:ListaUsuario]
	
	String toString(){
		descricao
	}
}
