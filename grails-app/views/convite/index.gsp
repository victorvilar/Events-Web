
<%@ page import="events.Convite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'convite.label', default: 'Convite')}" />
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
				<h4 class="page-header">Convites Cadastrados</h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	
	
		<div class="nav" role="navigation">
		</div>
		<div id="list-convite" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-hover table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="dataEnvio" title="${message(code: 'convite.dataEnvio.label', default: 'Data Envio')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'convite.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="convite.evento.label" default="Evento" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conviteInstanceList}" status="i" var="conviteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conviteInstance.id}">${fieldValue(bean: conviteInstance, field: "dataEnvio")}</g:link></td>
					
						<td>${fieldValue(bean: conviteInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: conviteInstance, field: "evento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<p class="small text-right">Clique no nome do convite para editar</p>
			
			<div class="buttons" >
				
				<g:link class="btn btn-primary btn-sm" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
				
			</div>
			
			
			<div class="pagination">
				<g:paginate total="${conviteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
