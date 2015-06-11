<%@ page import="events.Pais" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pais.label', default: 'Pais')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
			
		</div>
		<div id="edit-pais" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${paisInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${paisInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:paisInstance, action:'update']" method="PUT" class="form-horizontal" role="form">
				<g:hiddenField name="version" value="${paisInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<br></br>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:link class="btn btn-success btn-sm" action="index"><g:message code="Voltar" args="[entityName]" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
