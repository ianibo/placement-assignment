
<%@ page import="placement.Placement_Opportunity" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'placement_Opportunity.label', default: 'Placement_Opportunity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-placement_Opportunity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-placement_Opportunity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="applications" title="${message(code: 'placement_Opportunity.applications.label', default: 'Applications')}" />
					
						<g:sortableColumn property="companyname" title="${message(code: 'placement_Opportunity.companyname.label', default: 'Companyname')}" />
					
						<g:sortableColumn property="jobtitle" title="${message(code: 'placement_Opportunity.jobtitle.label', default: 'Jobtitle')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'placement_Opportunity.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${placement_OpportunityInstanceList}" status="i" var="placement_OpportunityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${placement_OpportunityInstance.id}">${fieldValue(bean: placement_OpportunityInstance, field: "applications")}</g:link></td>
					
						<td>${fieldValue(bean: placement_OpportunityInstance, field: "companyname")}</td>
					
						<td>${fieldValue(bean: placement_OpportunityInstance, field: "jobtitle")}</td>
					
						<td>${fieldValue(bean: placement_OpportunityInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${placement_OpportunityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
