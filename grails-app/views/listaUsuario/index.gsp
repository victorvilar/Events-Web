
<%@ page import="events.ListaUsuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'listaUsuario.label', default: 'ListaUsuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-listaUsuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-listaUsuario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataNascimento" title="${message(code: 'listaUsuario.dataNascimento.label', default: 'Data Nascimento')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'listaUsuario.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'listaUsuario.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'listaUsuario.telefone.label', default: 'Telefone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${listaUsuarioInstanceList}" status="i" var="listaUsuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${listaUsuarioInstance.id}">${fieldValue(bean: listaUsuarioInstance, field: "dataNascimento")}</g:link></td>
					
						<td>${fieldValue(bean: listaUsuarioInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: listaUsuarioInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: listaUsuarioInstance, field: "telefone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${listaUsuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
