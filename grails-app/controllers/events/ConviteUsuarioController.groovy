package events



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConviteUsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ConviteUsuario.list(params), model:[conviteUsuarioInstanceCount: ConviteUsuario.count()]
    }

    def show(ConviteUsuario conviteUsuarioInstance) {
        respond conviteUsuarioInstance
    }

    def create() {
        respond new ConviteUsuario(params)
    }

    @Transactional
    def save(ConviteUsuario conviteUsuarioInstance) {
        if (conviteUsuarioInstance == null) {
            notFound()
            return
        }

        if (conviteUsuarioInstance.hasErrors()) {
            respond conviteUsuarioInstance.errors, view:'create'
            return
        }

        conviteUsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'conviteUsuario.label', default: 'ConviteUsuario'), conviteUsuarioInstance.id])
                redirect conviteUsuarioInstance
            }
            '*' { respond conviteUsuarioInstance, [status: CREATED] }
        }
    }

    def edit(ConviteUsuario conviteUsuarioInstance) {
        respond conviteUsuarioInstance
    }

    @Transactional
    def update(ConviteUsuario conviteUsuarioInstance) {
        if (conviteUsuarioInstance == null) {
            notFound()
            return
        }

        if (conviteUsuarioInstance.hasErrors()) {
            respond conviteUsuarioInstance.errors, view:'edit'
            return
        }

        conviteUsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ConviteUsuario.label', default: 'ConviteUsuario'), conviteUsuarioInstance.id])
                redirect conviteUsuarioInstance
            }
            '*'{ respond conviteUsuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ConviteUsuario conviteUsuarioInstance) {

        if (conviteUsuarioInstance == null) {
            notFound()
            return
        }

        conviteUsuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ConviteUsuario.label', default: 'ConviteUsuario'), conviteUsuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'conviteUsuario.label', default: 'ConviteUsuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
