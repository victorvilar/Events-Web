
<%@ page import="events.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evento">
			
				<g:if test="${eventoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="evento.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${eventoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.dataInicio}">
				<li class="fieldcontain">
					<span id="dataInicio-label" class="property-label"><g:message code="evento.dataInicio.label" default="Data Inicio" /></span>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate date="${eventoInstance?.dataInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.dataFim}">
				<li class="fieldcontain">
					<span id="dataFim-label" class="property-label"><g:message code="evento.dataFim.label" default="Data Fim" /></span>
					
						<span class="property-value" aria-labelledby="dataFim-label"><g:formatDate date="${eventoInstance?.dataFim}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.convite}">
				<li class="fieldcontain">
					<span id="convite-label" class="property-label"><g:message code="evento.convite.label" default="Convite" /></span>
					
						<g:each in="${eventoInstance.convite}" var="c">
						<span class="property-value" aria-labelledby="convite-label"><g:link controller="convite" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="evento.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${eventoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.publico}">
				<li class="fieldcontain">
					<span id="publico-label" class="property-label"><g:message code="evento.publico.label" default="Publico" /></span>
					
						<span class="property-value" aria-labelledby="publico-label"><g:formatBoolean boolean="${eventoInstance?.publico}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="evento.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${eventoInstance?.usuario?.id}">${eventoInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
