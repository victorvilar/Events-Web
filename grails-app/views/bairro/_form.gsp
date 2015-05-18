<%@ page import="events.Bairro" %>



<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="bairro.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${bairroInstance?.nome}"/>

</div>

