package events

class ConviteUsuario {

	String status
	String justificativa
	Date dataRecebimento
	
    static constraints = {
    }
	
	String toString(){
		status
	}
	
	static belongsTo = [usuario:Usuario]
}
