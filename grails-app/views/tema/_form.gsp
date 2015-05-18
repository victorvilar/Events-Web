<%@ page import="events.Tema" %>



<div class="fieldcontain ${hasErrors(bean: temaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="tema.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${temaInstance?.descricao}"/>

</div>

