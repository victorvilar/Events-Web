<%@ page import="events.Convite" %>



<div class="fieldcontain ${hasErrors(bean: conviteInstance, field: 'dataEnvio', 'error')} required">
	<label for="dataEnvio">
		<g:message code="convite.dataEnvio.label" default="Data Envio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataEnvio" precision="day"  value="${conviteInstance?.dataEnvio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: conviteInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="convite.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${conviteInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conviteInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="convite.evento.label" default="Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="evento" name="evento.id" from="${events.Evento.list()}" optionKey="id" required="" value="${conviteInstance?.evento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conviteInstance, field: 'listausuario', 'error')} ">
	<label for="listausuario">
		<g:message code="convite.listausuario.label" default="Listausuario" />
		
	</label>
	<g:select name="listausuario" from="${events.Usuario.list()}" multiple="multiple" optionKey="id" size="5" value="${conviteInstance?.listausuario*.id}" class="many-to-many"/>

</div>

