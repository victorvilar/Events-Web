
<%@ page import="events.ConviteUsuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conviteUsuario.label', default: 'ConviteUsuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conviteUsuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conviteUsuario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataRecebimento" title="${message(code: 'conviteUsuario.dataRecebimento.label', default: 'Data Recebimento')}" />
					
						<g:sortableColumn property="justificativa" title="${message(code: 'conviteUsuario.justificativa.label', default: 'Justificativa')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'conviteUsuario.status.label', default: 'Status')}" />
					
						<th><g:message code="conviteUsuario.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conviteUsuarioInstanceList}" status="i" var="conviteUsuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conviteUsuarioInstance.id}">${fieldValue(bean: conviteUsuarioInstance, field: "dataRecebimento")}</g:link></td>
					
						<td>${fieldValue(bean: conviteUsuarioInstance, field: "justificativa")}</td>
					
						<td>${fieldValue(bean: conviteUsuarioInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: conviteUsuarioInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conviteUsuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
