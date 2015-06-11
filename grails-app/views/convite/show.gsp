
<%@ page import="events.Convite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'convite.label', default: 'Convite')}" />
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
				<h4 class="page-header">Editar Usuário</h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	
	
	
		<div class="nav" role="navigation">
			<ul>
				
			</ul>
		</div>
		<div id="show-convite" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list convite">
			
				<g:if test="${conviteInstance?.dataEnvio}">
				<li class="fieldcontain">
					<span id="dataEnvio-label" class="property-label"><g:message code="convite.dataEnvio.label" default="Data Envio" /></span>
					
						<span class="property-value" aria-labelledby="dataEnvio-label"><g:formatDate date="${conviteInstance?.dataEnvio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conviteInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="convite.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${conviteInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conviteInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="convite.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:link controller="evento" action="show" id="${conviteInstance?.evento?.id}">${conviteInstance?.evento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${conviteInstance?.listausuario}">
				<li class="fieldcontain">
					<span id="listausuario-label" class="property-label"><g:message code="convite.listausuario.label" default="Listausuario" /></span>
					
						<g:each in="${conviteInstance.listausuario}" var="l">
						<span class="property-value" aria-labelledby="listausuario-label"><g:link controller="usuario" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conviteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${conviteInstance}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="btn btn-success" href="${request.contextPath}/"><g:message code="default.button" default="Voltar" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
