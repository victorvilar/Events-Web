
<%@ page import="events.Cidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}" />
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
				<h4 class="page-header">Detalhes da Cidade</h4>
				
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	
	
	
	
		<div class="nav" role="navigation">
			
		</div>
		<div id="show-cidade" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ul class="property-list cidade">
			
				<g:if test="${cidadeInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="cidade.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${cidadeInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cidadeInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="cidade.bairro.label" default="Bairro" /></span>
					
						<g:each in="${cidadeInstance.bairro}" var="b">
						<span class="property-value" aria-labelledby="bairro-label"><g:link controller="bairro" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cidadeInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="cidade.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:link controller="estado" action="show" id="${cidadeInstance?.estado?.id}">${cidadeInstance?.estado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ul>
			<g:form url="[resource:cidadeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${cidadeInstance}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="btn btn-success" href="${request.contextPath}/"><g:message code="default.button" default="Voltar" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
