package placement

import org.springframework.dao.DataIntegrityViolationException

class Placement_OpportunityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [placement_OpportunityInstanceList: Placement_Opportunity.list(params), placement_OpportunityInstanceTotal: Placement_Opportunity.count()]
    }

    def create() {
        [placement_OpportunityInstance: new Placement_Opportunity(params)]
    }

    def save() {
        def placement_OpportunityInstance = new Placement_Opportunity(params)
        if (!placement_OpportunityInstance.save(flush: true)) {
            render(view: "create", model: [placement_OpportunityInstance: placement_OpportunityInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), placement_OpportunityInstance.id])
        redirect(action: "show", id: placement_OpportunityInstance.id)
    }

    def show() {
        def placement_OpportunityInstance = Placement_Opportunity.get(params.id)
        if (!placement_OpportunityInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        [placement_OpportunityInstance: placement_OpportunityInstance]
    }

    def edit() {
        def placement_OpportunityInstance = Placement_Opportunity.get(params.id)
        if (!placement_OpportunityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        [placement_OpportunityInstance: placement_OpportunityInstance]
    }

    def update() {
        def placement_OpportunityInstance = Placement_Opportunity.get(params.id)
        if (!placement_OpportunityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (placement_OpportunityInstance.version > version) {
                placement_OpportunityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity')] as Object[],
                          "Another user has updated this Placement_Opportunity while you were editing")
                render(view: "edit", model: [placement_OpportunityInstance: placement_OpportunityInstance])
                return
            }
        }

        placement_OpportunityInstance.properties = params

        if (!placement_OpportunityInstance.save(flush: true)) {
            render(view: "edit", model: [placement_OpportunityInstance: placement_OpportunityInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), placement_OpportunityInstance.id])
        redirect(action: "show", id: placement_OpportunityInstance.id)
    }

    def delete() {
        def placement_OpportunityInstance = Placement_Opportunity.get(params.id)
        if (!placement_OpportunityInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        try {
            placement_OpportunityInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
