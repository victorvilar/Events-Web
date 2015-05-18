package events



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConviteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Convite.list(params), model:[conviteInstanceCount: Convite.count()]
    }

    def show(Convite conviteInstance) {
        respond conviteInstance
    }

    def create() {
        respond new Convite(params)
    }

    @Transactional
    def save(Convite conviteInstance) {
        if (conviteInstance == null) {
            notFound()
            return
        }

        if (conviteInstance.hasErrors()) {
            respond conviteInstance.errors, view:'create'
            return
        }

        conviteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'convite.label', default: 'Convite'), conviteInstance.id])
                redirect conviteInstance
            }
            '*' { respond conviteInstance, [status: CREATED] }
        }
    }

    def edit(Convite conviteInstance) {
        respond conviteInstance
    }

    @Transactional
    def update(Convite conviteInstance) {
        if (conviteInstance == null) {
            notFound()
            return
        }

        if (conviteInstance.hasErrors()) {
            respond conviteInstance.errors, view:'edit'
            return
        }

        conviteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Convite.label', default: 'Convite'), conviteInstance.id])
                redirect conviteInstance
            }
            '*'{ respond conviteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Convite conviteInstance) {

        if (conviteInstance == null) {
            notFound()
            return
        }

        conviteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Convite.label', default: 'Convite'), conviteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'convite.label', default: 'Convite'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
