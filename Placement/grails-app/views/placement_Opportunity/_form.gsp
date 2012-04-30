<%@ page import="placement.Placement_Opportunity" %>



<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'applications', 'error')} ">
	<label for="applications">
		<g:message code="placement_Opportunity.applications.label" default="Applications" />
		
	</label>
	<g:textField name="applications" value="${placement_OpportunityInstance?.applications}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'companyname', 'error')} ">
	<label for="companyname">
		<g:message code="placement_Opportunity.companyname.label" default="Companyname" />
		
	</label>
	<g:textField name="companyname" value="${placement_OpportunityInstance?.companyname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'jobtitle', 'error')} ">
	<label for="jobtitle">
		<g:message code="placement_Opportunity.jobtitle.label" default="Jobtitle" />
		
	</label>
	<g:textField name="jobtitle" value="${placement_OpportunityInstance?.jobtitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="placement_Opportunity.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="status" name="status.id" from="${placement.Status.list()}" optionKey="id" required="" value="${placement_OpportunityInstance?.status?.id}" class="many-to-one"/>
</div>

