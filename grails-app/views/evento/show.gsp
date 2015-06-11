
<%@ page import="events.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	
	<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-search"></i>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<h4 class="page-header">Detalhes de evento</h4>
				
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	
	
	
		<div class="nav" role="navigation">
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ul class="property-list evento">
			
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
			
				<g:if test="${eventoInstance?.local}">
				<li class="fieldcontain">
					<span id="local-label" class="property-label"><g:message code="evento.local.label" default="Local" /></span>
					
						<g:each in="${eventoInstance.local}" var="l">
						<span class="property-value" aria-labelledby="local-label"><g:link controller="localidade" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.publico}">
				<li class="fieldcontain">
					<span id="publico-label" class="property-label"><g:message code="evento.publico.label" default="Publico" /></span>
					
						<span class="property-value" aria-labelledby="publico-label"><g:formatBoolean boolean="${eventoInstance?.publico}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.tema}">
				<li class="fieldcontain">
					<span id="tema-label" class="property-label"><g:message code="evento.tema.label" default="Tema" /></span>
					
						<g:each in="${eventoInstance.tema}" var="t">
						<span class="property-value" aria-labelledby="tema-label"><g:link controller="tema" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="evento.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${eventoInstance?.usuario?.id}">${eventoInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ul>
			<g:form url="[resource:eventoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${eventoInstance}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="btn btn-success" href="${request.contextPath}/"><g:message code="default.button" default="Voltar" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
