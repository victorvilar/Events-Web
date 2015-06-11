
<%@ page import="events.Tema" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tema.label', default: 'Tema')}" />
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
				<h4 class="page-header">Detalhes do Tema</h4>
				
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
		
		
		
		<a href="#show-tema" class="skip" tabindex="-1">
			
		<div class="nav" role="navigation">
			
		</div>
		<div id="show-tema" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ul class="property-list tema">
			
				<g:if test="${temaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label">
					Descrição: 
					</span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${temaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
			</ul>
			<g:form url="[resource:temaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${temaInstance}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="btn btn-success" href="${request.contextPath}/"><g:message code="default.button" default="Voltar" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
