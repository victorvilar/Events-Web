<%@ page import="events.Pais" %>



<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pais.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${paisInstance?.nome}"/>

</div>

