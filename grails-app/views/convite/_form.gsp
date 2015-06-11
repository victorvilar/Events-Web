<%@ page import="events.Convite" %>




<!-- Descrição -->
<div class="form-group ${hasErrors(bean: conviteInstance, field: 'descricao', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Descrição
	</label>
	<div class="col-sm-3">
		<g:textField name="descricao"  value="${conviteInstance?.descricao}" class="form-control" />
	</div>
</div>

<!-- Data de envio -->
<div class="form-group ${hasErrors(bean: conviteInstance, field: 'dataEnvio', 'has-error')} required">
	<label class="col-sm-2 control-label" style="text-align:left">
		Data de Envio
	</label>
	<div class="col-sm-5">
		<g:datePicker name="dataEnvio" precision="day" value="${conviteInstance?.dataEnvio}" class="form-control" />
	</div>
</div>

<!-- Evento -->
<div class="form-group ${hasErrors(bean: conviteInstance, field: 'evento', 'has-error')} required">
	<label class="col-sm-1 control-label" style="text-align:left">
		Evento
	</label>
	<div class="col-sm-6">
		<g:select id="evento" name="evento.id" from="${events.Evento.list()}" optionKey="id"  value="${conviteInstance?.evento?.id}" class="many-to-one form-control"/>
	</div>
</div>

<!-- Convidados -->
<div class="form-group ${hasErrors(bean: conviteInstance, field: 'listausuario', 'error')} ">
	<label class="col-sm-1 control-label">
		Convidados
	</label>
	<div class="col-sm-4">
		<g:select name="listausuario" from="${events.Usuario.list()}" multiple="multiple" optionKey="id" size="5" value="${conviteInstance?.listausuario*.id}" class="many-to-many form-control"/>
	</div>
</div>

