
<%@ page import="events.Convite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'convite.label', default: 'Convite')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-convite" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-convite" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataEnvio" title="${message(code: 'convite.dataEnvio.label', default: 'Data Envio')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'convite.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="convite.evento.label" default="Evento" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conviteInstanceList}" status="i" var="conviteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conviteInstance.id}">${fieldValue(bean: conviteInstance, field: "dataEnvio")}</g:link></td>
					
						<td>${fieldValue(bean: conviteInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: conviteInstance, field: "evento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conviteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
