package events



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LocalidadeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Localidade.list(params), model:[localidadeInstanceCount: Localidade.count()]
    }

    def show(Localidade localidadeInstance) {
        respond localidadeInstance
    }

    def create() {
        respond new Localidade(params)
    }

    @Transactional
    def save(Localidade localidadeInstance) {
        if (localidadeInstance == null) {
            notFound()
            return
        }

        if (localidadeInstance.hasErrors()) {
            respond localidadeInstance.errors, view:'create'
            return
        }

        localidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'localidade.label', default: 'Localidade'), localidadeInstance.id])
                redirect localidadeInstance
            }
            '*' { respond localidadeInstance, [status: CREATED] }
        }
    }

    def edit(Localidade localidadeInstance) {
        respond localidadeInstance
    }

    @Transactional
    def update(Localidade localidadeInstance) {
        if (localidadeInstance == null) {
            notFound()
            return
        }

        if (localidadeInstance.hasErrors()) {
            respond localidadeInstance.errors, view:'edit'
            return
        }

        localidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Localidade.label', default: 'Localidade'), localidadeInstance.id])
                redirect localidadeInstance
            }
            '*'{ respond localidadeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Localidade localidadeInstance) {

        if (localidadeInstance == null) {
            notFound()
            return
        }

        localidadeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Localidade.label', default: 'Localidade'), localidadeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'localidade.label', default: 'Localidade'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
