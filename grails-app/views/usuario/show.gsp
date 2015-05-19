
<%@ page import="events.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="usuario.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${usuarioInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label"><g:message code="usuario.dataNascimento.label" default="Data Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${usuarioInstance?.dataNascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.localidade}">
				<li class="fieldcontain">
					<span id="localidade-label" class="property-label"><g:message code="usuario.localidade.label" default="Localidade" /></span>
					
						<span class="property-value" aria-labelledby="localidade-label"><g:link controller="localidade" action="show" id="${usuarioInstance?.localidade?.id}">${usuarioInstance?.localidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.localidadeinteresse}">
				<li class="fieldcontain">
					<span id="localidadeinteresse-label" class="property-label"><g:message code="usuario.localidadeinteresse.label" default="Localidadeinteresse" /></span>
					
						<g:each in="${usuarioInstance.localidadeinteresse}" var="l">
						<span class="property-value" aria-labelledby="localidadeinteresse-label"><g:link controller="localidade" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="usuario.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${usuarioInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.temainteresse}">
				<li class="fieldcontain">
					<span id="temainteresse-label" class="property-label"><g:message code="usuario.temainteresse.label" default="Temainteresse" /></span>
					
						<g:each in="${usuarioInstance.temainteresse}" var="t">
						<span class="property-value" aria-labelledby="temainteresse-label"><g:link controller="tema" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
