<%@ page import="placement.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="application.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${applicationInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="application.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${applicationInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'placement_opportunities', 'error')} required">
	<label for="placement_opportunities">
		<g:message code="application.placement_opportunities.label" default="Placementopportunities" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'students', 'error')} required">
	<label for="students">
		<g:message code="application.students.label" default="Students" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

