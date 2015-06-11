<%@ page import="events.Cidade" %>


<!-- NOME -->
<div class="form-group ${hasErrors(bean: cidadeInstance, field: 'nome', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Nome
	</label>
	<div class="col-sm-5">
	<g:textField name="nome"  value="${cidadeInstance?.nome}" class="form-control"/>
</div>
</div>


<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'estado', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Estado
	</label>
	<div class="col-sm-5">
	<g:select id="estado" name="estado.id" from="${events.Estado.list()}" optionKey="id"  value="${cidadeInstance?.estado?.id}" class="many-to-one form-control"/>
</div>
</div>

