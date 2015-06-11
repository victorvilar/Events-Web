<%@ page import="events.Estado" %>


<!-- NOME -->
<div class="form-group ${hasErrors(bean: estadoInstance, field: 'nome', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Nome
	</label>
	<div class="col-sm-5">
		<g:textField name="nome"  value="${estadoInstance?.nome}" class="form-control"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'pais', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Estado
	</label>
	<div class="col-sm-4">
	<g:select id="pais" name="pais.id" from="${events.Pais.list()}" optionKey="id"  value="${estadoInstance?.pais?.id}" class="many-to-one form-control"/>
	</div>
</div>

