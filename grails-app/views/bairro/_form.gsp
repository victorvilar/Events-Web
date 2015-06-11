<%@ page import="events.Bairro" %>

<!-- NOME -->
<div class="form-group ${hasErrors(bean: bairroInstance, field: 'nome', 'error')} required">
	<label class="col-sm-1 control-label">
		Nome
	</label>
	<div class="col-sm-5">
		<g:textField name="nome"  value="${bairroInstance?.nome}" class="form-control"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'cidade', 'error')} required">
	<label class="col-sm-1 control-label">
		Cidade
	</label>
	<div class="col-sm-3">
		<g:select id="cidade" name="cidade.id" from="${events.Cidade.list()}" optionKey="id"  value="${bairroInstance?.cidade?.id}" class="many-to-one form-control"/>
	</div>
</div>

