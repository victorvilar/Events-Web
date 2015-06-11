
<%@ page import="events.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
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
				<h4 class="page-header">Eventos Cadastrados</h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	
	
		
		<div class="nav" role="navigation">
			
		</div>
		<div id="list-evento" class="content scaffold-list" role="main">
		<h6></h6>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-hover table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'evento.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="dataInicio" title="${message(code: 'evento.dataInicio.label', default: 'Data Inicio')}" />
					
						<g:sortableColumn property="dataFim" title="${message(code: 'evento.dataFim.label', default: 'Data Fim')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'evento.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="publico" title="${message(code: 'evento.publico.label', default: 'Publico')}" />
					
						<th><g:message code="evento.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventoInstance.id}">${fieldValue(bean: eventoInstance, field: "nome")}</g:link></td>
					
						<td><g:formatDate date="${eventoInstance.dataInicio}" /></td>
					
						<td><g:formatDate date="${eventoInstance.dataFim}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "descricao")}</td>
					
						<td><g:formatBoolean boolean="${eventoInstance.publico}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<p class="small text-right">Clique no nome do evento para editar</p>
			
			<div class="buttons" >
				
				<g:link class="btn btn-primary btn-sm" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
				
			</div>
			
			<div class="pagination">
				<g:paginate total="${eventoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
