<%@ page import="events.Bairro" %>



<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="bairro.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${bairroInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="bairro.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cidade" name="cidade.id" from="${events.Cidade.list()}" optionKey="id" required="" value="${bairroInstance?.cidade?.id}" class="many-to-one"/>

</div>

