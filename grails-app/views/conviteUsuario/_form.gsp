<%@ page import="events.ConviteUsuario" %>



<div class="fieldcontain ${hasErrors(bean: conviteUsuarioInstance, field: 'dataRecebimento', 'error')} required">
	<label for="dataRecebimento">
		<g:message code="conviteUsuario.dataRecebimento.label" default="Data Recebimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataRecebimento" precision="day"  value="${conviteUsuarioInstance?.dataRecebimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: conviteUsuarioInstance, field: 'justificativa', 'error')} required">
	<label for="justificativa">
		<g:message code="conviteUsuario.justificativa.label" default="Justificativa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="justificativa" required="" value="${conviteUsuarioInstance?.justificativa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conviteUsuarioInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="conviteUsuario.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${conviteUsuarioInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conviteUsuarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="conviteUsuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${events.Usuario.list()}" optionKey="id" required="" value="${conviteUsuarioInstance?.usuario?.id}" class="many-to-one"/>

</div>

