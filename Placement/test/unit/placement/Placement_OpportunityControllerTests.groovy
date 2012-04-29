package placement



import org.junit.*
import grails.test.mixin.*

@TestFor(Placement_OpportunityController)
@Mock(Placement_Opportunity)
class Placement_OpportunityControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/placement_Opportunity/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.placement_OpportunityInstanceList.size() == 0
        assert model.placement_OpportunityInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.placement_OpportunityInstance != null
    }

    void testSave() {
        controller.save()

        assert model.placement_OpportunityInstance != null
        assert view == '/placement_Opportunity/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/placement_Opportunity/show/1'
        assert controller.flash.message != null
        assert Placement_Opportunity.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/placement_Opportunity/list'


        populateValidParams(params)
        def placement_Opportunity = new Placement_Opportunity(params)

        assert placement_Opportunity.save() != null

        params.id = placement_Opportunity.id

        def model = controller.show()

        assert model.placement_OpportunityInstance == placement_Opportunity
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/placement_Opportunity/list'


        populateValidParams(params)
        def placement_Opportunity = new Placement_Opportunity(params)

        assert placement_Opportunity.save() != null

        params.id = placement_Opportunity.id

        def model = controller.edit()

        assert model.placement_OpportunityInstance == placement_Opportunity
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/placement_Opportunity/list'

        response.reset()


        populateValidParams(params)
        def placement_Opportunity = new Placement_Opportunity(params)

        assert placement_Opportunity.save() != null

        // test invalid parameters in update
        params.id = placement_Opportunity.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/placement_Opportunity/edit"
        assert model.placement_OpportunityInstance != null

        placement_Opportunity.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/placement_Opportunity/show/$placement_Opportunity.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        placement_Opportunity.clearErrors()

        populateValidParams(params)
        params.id = placement_Opportunity.id
        params.version = -1
        controller.update()

        assert view == "/placement_Opportunity/edit"
        assert model.placement_OpportunityInstance != null
        assert model.placement_OpportunityInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/placement_Opportunity/list'

        response.reset()

        populateValidParams(params)
        def placement_Opportunity = new Placement_Opportunity(params)

        assert placement_Opportunity.save() != null
        assert Placement_Opportunity.count() == 1

        params.id = placement_Opportunity.id

        controller.delete()

        assert Placement_Opportunity.count() == 0
        assert Placement_Opportunity.get(placement_Opportunity.id) == null
        assert response.redirectedUrl == '/placement_Opportunity/list'
    }
}
