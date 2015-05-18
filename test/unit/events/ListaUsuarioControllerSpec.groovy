package events



import grails.test.mixin.*
import spock.lang.*

@TestFor(ListaUsuarioController)
@Mock(ListaUsuario)
class ListaUsuarioControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.listaUsuarioInstanceList
            model.listaUsuarioInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.listaUsuarioInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def listaUsuario = new ListaUsuario()
            listaUsuario.validate()
            controller.save(listaUsuario)

        then:"The create view is rendered again with the correct model"
            model.listaUsuarioInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            listaUsuario = new ListaUsuario(params)

            controller.save(listaUsuario)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/listaUsuario/show/1'
            controller.flash.message != null
            ListaUsuario.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def listaUsuario = new ListaUsuario(params)
            controller.show(listaUsuario)

        then:"A model is populated containing the domain instance"
            model.listaUsuarioInstance == listaUsuario
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def listaUsuario = new ListaUsuario(params)
            controller.edit(listaUsuario)

        then:"A model is populated containing the domain instance"
            model.listaUsuarioInstance == listaUsuario
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/listaUsuario/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def listaUsuario = new ListaUsuario()
            listaUsuario.validate()
            controller.update(listaUsuario)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.listaUsuarioInstance == listaUsuario

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            listaUsuario = new ListaUsuario(params).save(flush: true)
            controller.update(listaUsuario)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/listaUsuario/show/$listaUsuario.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/listaUsuario/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def listaUsuario = new ListaUsuario(params).save(flush: true)

        then:"It exists"
            ListaUsuario.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(listaUsuario)

        then:"The instance is deleted"
            ListaUsuario.count() == 0
            response.redirectedUrl == '/listaUsuario/index'
            flash.message != null
    }
}
