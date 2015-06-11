
<%@ page import="events.Pais" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
			<link rel="shortcut icon" href="${request.contextPath}/square/favicon.ico" type="image/x-icon">
		
		<g:set var="entityName" value="${message(code: 'pais.label', default: 'Pais')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
	<div class="row">
	<div class="col-xs-12 col-sm-12">
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
				<h4 class="page-header">Paises Cadastrados</h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	
	
	
	
		<div class="nav" role="navigation">
			
		</div>
		<div id="list-pais" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-hover table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'pais.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paisInstanceList}" status="i" var="paisInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paisInstance.id}">${fieldValue(bean: paisInstance, field: "nome")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<p class="small text-right">Clique no nome do país para editar</p>
			
			<div class="buttons" >
				
				<g:link class="btn btn-primary btn-sm" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
				
			</div>
			
			
			<div class="pagination">
				<g:paginate total="${paisInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
