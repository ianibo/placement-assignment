
<%@ page import="placement.Placement_Opportunity" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-placement_Opportunity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-placement_Opportunity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list placement_Opportunity">
			
				<g:if test="${placement_OpportunityInstance?.applications}">
				<li class="fieldcontain">
					<span id="applications-label" class="property-label"><g:message code="placement_Opportunity.applications.label" default="Applications" /></span>
					
						<span class="property-value" aria-labelledby="applications-label"><g:fieldValue bean="${placement_OpportunityInstance}" field="applications"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${placement_OpportunityInstance?.companyname}">
				<li class="fieldcontain">
					<span id="companyname-label" class="property-label"><g:message code="placement_Opportunity.companyname.label" default="Companyname" /></span>
					
						<span class="property-value" aria-labelledby="companyname-label"><g:fieldValue bean="${placement_OpportunityInstance}" field="companyname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${placement_OpportunityInstance?.jobtitle}">
				<li class="fieldcontain">
					<span id="jobtitle-label" class="property-label"><g:message code="placement_Opportunity.jobtitle.label" default="Jobtitle" /></span>
					
						<span class="property-value" aria-labelledby="jobtitle-label"><g:fieldValue bean="${placement_OpportunityInstance}" field="jobtitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${placement_OpportunityInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="placement_Opportunity.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${placement_OpportunityInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${placement_OpportunityInstance?.id}" />
					<g:link class="edit" action="edit" id="${placement_OpportunityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
