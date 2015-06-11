package events

class Convite {

	String descricao
	Date dataEnvio
	
    static constraints = {
    }
	
	static belongsTo = [evento:Evento]
	static hasMany = [listausuario:Usuario]
	
	String toString(){
		descricao
	}
}
