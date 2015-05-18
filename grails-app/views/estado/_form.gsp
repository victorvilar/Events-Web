<%@ page import="events.Estado" %>



<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="estado.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${estadoInstance?.nome}"/>

</div>

