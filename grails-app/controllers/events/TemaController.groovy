package events



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TemaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tema.list(params), model:[temaInstanceCount: Tema.count()]
    }

    def show(Tema temaInstance) {
        respond temaInstance
    }

    def create() {
        respond new Tema(params)
    }

    @Transactional
    def save(Tema temaInstance) {
        if (temaInstance == null) {
            notFound()
            return
        }

        if (temaInstance.hasErrors()) {
            respond temaInstance.errors, view:'create'
            return
        }

        temaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tema.label', default: 'Tema'), temaInstance.id])
                redirect temaInstance
            }
            '*' { respond temaInstance, [status: CREATED] }
        }
    }

    def edit(Tema temaInstance) {
        respond temaInstance
    }

    @Transactional
    def update(Tema temaInstance) {
        if (temaInstance == null) {
            notFound()
            return
        }

        if (temaInstance.hasErrors()) {
            respond temaInstance.errors, view:'edit'
            return
        }

        temaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tema.label', default: 'Tema'), temaInstance.id])
                redirect temaInstance
            }
            '*'{ respond temaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tema temaInstance) {

        if (temaInstance == null) {
            notFound()
            return
        }

        temaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tema.label', default: 'Tema'), temaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tema.label', default: 'Tema'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
