
<%@ page import="events.Bairro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bairro.label', default: 'Bairro')}" />
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
				<h4 class="page-header">Bairros Cadastrados</h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	
	
		<div class="nav" role="navigation">
			
		</div>
		<div id="list-bairro" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-hover table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'bairro.nome.label', default: 'Nome')}" />
					
						<th><g:message code="bairro.cidade.label" default="Cidade" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bairroInstanceList}" status="i" var="bairroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bairroInstance.id}">${fieldValue(bean: bairroInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: bairroInstance, field: "cidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<p class="small text-right">Clique no nome do bairro para editar</p>
			
			<div class="buttons" >
				
				<g:link class="btn btn-primary btn-sm" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
				
			</div>
			
			
			<div class="pagination">
				<g:paginate total="${bairroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
