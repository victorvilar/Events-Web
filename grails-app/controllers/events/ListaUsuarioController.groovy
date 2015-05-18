package events



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ListaUsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ListaUsuario.list(params), model:[listaUsuarioInstanceCount: ListaUsuario.count()]
    }

    def show(ListaUsuario listaUsuarioInstance) {
        respond listaUsuarioInstance
    }

    def create() {
        respond new ListaUsuario(params)
    }

    @Transactional
    def save(ListaUsuario listaUsuarioInstance) {
        if (listaUsuarioInstance == null) {
            notFound()
            return
        }

        if (listaUsuarioInstance.hasErrors()) {
            respond listaUsuarioInstance.errors, view:'create'
            return
        }

        listaUsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'listaUsuario.label', default: 'ListaUsuario'), listaUsuarioInstance.id])
                redirect listaUsuarioInstance
            }
            '*' { respond listaUsuarioInstance, [status: CREATED] }
        }
    }

    def edit(ListaUsuario listaUsuarioInstance) {
        respond listaUsuarioInstance
    }

    @Transactional
    def update(ListaUsuario listaUsuarioInstance) {
        if (listaUsuarioInstance == null) {
            notFound()
            return
        }

        if (listaUsuarioInstance.hasErrors()) {
            respond listaUsuarioInstance.errors, view:'edit'
            return
        }

        listaUsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ListaUsuario.label', default: 'ListaUsuario'), listaUsuarioInstance.id])
                redirect listaUsuarioInstance
            }
            '*'{ respond listaUsuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ListaUsuario listaUsuarioInstance) {

        if (listaUsuarioInstance == null) {
            notFound()
            return
        }

        listaUsuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ListaUsuario.label', default: 'ListaUsuario'), listaUsuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'listaUsuario.label', default: 'ListaUsuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
