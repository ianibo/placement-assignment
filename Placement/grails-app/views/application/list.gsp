
<%@ page import="placement.Application" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-application" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-application" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'application.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'application.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="placement_opportunities" title="${message(code: 'application.placement_opportunities.label', default: 'Placementopportunities')}" />
					
						<g:sortableColumn property="students" title="${message(code: 'application.students.label', default: 'Students')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${applicationInstanceList}" status="i" var="applicationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${applicationInstance.id}">${fieldValue(bean: applicationInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: applicationInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: applicationInstance, field: "placement_opportunities")}</td>
					
						<td>${fieldValue(bean: applicationInstance, field: "students")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${applicationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
