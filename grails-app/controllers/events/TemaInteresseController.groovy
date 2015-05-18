package events



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TemaInteresseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TemaInteresse.list(params), model:[temaInteresseInstanceCount: TemaInteresse.count()]
    }

    def show(TemaInteresse temaInteresseInstance) {
        respond temaInteresseInstance
    }

    def create() {
        respond new TemaInteresse(params)
    }

    @Transactional
    def save(TemaInteresse temaInteresseInstance) {
        if (temaInteresseInstance == null) {
            notFound()
            return
        }

        if (temaInteresseInstance.hasErrors()) {
            respond temaInteresseInstance.errors, view:'create'
            return
        }

        temaInteresseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'temaInteresse.label', default: 'TemaInteresse'), temaInteresseInstance.id])
                redirect temaInteresseInstance
            }
            '*' { respond temaInteresseInstance, [status: CREATED] }
        }
    }

    def edit(TemaInteresse temaInteresseInstance) {
        respond temaInteresseInstance
    }

    @Transactional
    def update(TemaInteresse temaInteresseInstance) {
        if (temaInteresseInstance == null) {
            notFound()
            return
        }

        if (temaInteresseInstance.hasErrors()) {
            respond temaInteresseInstance.errors, view:'edit'
            return
        }

        temaInteresseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TemaInteresse.label', default: 'TemaInteresse'), temaInteresseInstance.id])
                redirect temaInteresseInstance
            }
            '*'{ respond temaInteresseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TemaInteresse temaInteresseInstance) {

        if (temaInteresseInstance == null) {
            notFound()
            return
        }

        temaInteresseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TemaInteresse.label', default: 'TemaInteresse'), temaInteresseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'temaInteresse.label', default: 'TemaInteresse'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
