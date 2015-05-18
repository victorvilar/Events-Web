
<%@ page import="events.ConviteUsuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conviteUsuario.label', default: 'ConviteUsuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-conviteUsuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-conviteUsuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list conviteUsuario">
			
				<g:if test="${conviteUsuarioInstance?.dataRecebimento}">
				<li class="fieldcontain">
					<span id="dataRecebimento-label" class="property-label"><g:message code="conviteUsuario.dataRecebimento.label" default="Data Recebimento" /></span>
					
						<span class="property-value" aria-labelledby="dataRecebimento-label"><g:formatDate date="${conviteUsuarioInstance?.dataRecebimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conviteUsuarioInstance?.justificativa}">
				<li class="fieldcontain">
					<span id="justificativa-label" class="property-label"><g:message code="conviteUsuario.justificativa.label" default="Justificativa" /></span>
					
						<span class="property-value" aria-labelledby="justificativa-label"><g:fieldValue bean="${conviteUsuarioInstance}" field="justificativa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conviteUsuarioInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="conviteUsuario.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${conviteUsuarioInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conviteUsuarioInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="conviteUsuario.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${conviteUsuarioInstance?.usuario?.id}">${conviteUsuarioInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conviteUsuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${conviteUsuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
