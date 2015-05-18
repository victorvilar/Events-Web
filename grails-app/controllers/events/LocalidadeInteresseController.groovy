package events



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LocalidadeInteresseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LocalidadeInteresse.list(params), model:[localidadeInteresseInstanceCount: LocalidadeInteresse.count()]
    }

    def show(LocalidadeInteresse localidadeInteresseInstance) {
        respond localidadeInteresseInstance
    }

    def create() {
        respond new LocalidadeInteresse(params)
    }

    @Transactional
    def save(LocalidadeInteresse localidadeInteresseInstance) {
        if (localidadeInteresseInstance == null) {
            notFound()
            return
        }

        if (localidadeInteresseInstance.hasErrors()) {
            respond localidadeInteresseInstance.errors, view:'create'
            return
        }

        localidadeInteresseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'localidadeInteresse.label', default: 'LocalidadeInteresse'), localidadeInteresseInstance.id])
                redirect localidadeInteresseInstance
            }
            '*' { respond localidadeInteresseInstance, [status: CREATED] }
        }
    }

    def edit(LocalidadeInteresse localidadeInteresseInstance) {
        respond localidadeInteresseInstance
    }

    @Transactional
    def update(LocalidadeInteresse localidadeInteresseInstance) {
        if (localidadeInteresseInstance == null) {
            notFound()
            return
        }

        if (localidadeInteresseInstance.hasErrors()) {
            respond localidadeInteresseInstance.errors, view:'edit'
            return
        }

        localidadeInteresseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LocalidadeInteresse.label', default: 'LocalidadeInteresse'), localidadeInteresseInstance.id])
                redirect localidadeInteresseInstance
            }
            '*'{ respond localidadeInteresseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LocalidadeInteresse localidadeInteresseInstance) {

        if (localidadeInteresseInstance == null) {
            notFound()
            return
        }

        localidadeInteresseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LocalidadeInteresse.label', default: 'LocalidadeInteresse'), localidadeInteresseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'localidadeInteresse.label', default: 'LocalidadeInteresse'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
