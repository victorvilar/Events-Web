package events



import grails.test.mixin.*
import spock.lang.*

@TestFor(TemaInteresseController)
@Mock(TemaInteresse)
class TemaInteresseControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.temaInteresseInstanceList
            model.temaInteresseInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.temaInteresseInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def temaInteresse = new TemaInteresse()
            temaInteresse.validate()
            controller.save(temaInteresse)

        then:"The create view is rendered again with the correct model"
            model.temaInteresseInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            temaInteresse = new TemaInteresse(params)

            controller.save(temaInteresse)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/temaInteresse/show/1'
            controller.flash.message != null
            TemaInteresse.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def temaInteresse = new TemaInteresse(params)
            controller.show(temaInteresse)

        then:"A model is populated containing the domain instance"
            model.temaInteresseInstance == temaInteresse
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def temaInteresse = new TemaInteresse(params)
            controller.edit(temaInteresse)

        then:"A model is populated containing the domain instance"
            model.temaInteresseInstance == temaInteresse
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/temaInteresse/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def temaInteresse = new TemaInteresse()
            temaInteresse.validate()
            controller.update(temaInteresse)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.temaInteresseInstance == temaInteresse

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            temaInteresse = new TemaInteresse(params).save(flush: true)
            controller.update(temaInteresse)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/temaInteresse/show/$temaInteresse.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/temaInteresse/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def temaInteresse = new TemaInteresse(params).save(flush: true)

        then:"It exists"
            TemaInteresse.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(temaInteresse)

        then:"The instance is deleted"
            TemaInteresse.count() == 0
            response.redirectedUrl == '/temaInteresse/index'
            flash.message != null
    }
}
