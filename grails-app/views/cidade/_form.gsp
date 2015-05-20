<%@ page import="events.Cidade" %>



<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cidade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${cidadeInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'bairro', 'error')} ">
	<label for="bairro">
		<g:message code="cidade.bairro.label" default="Bairro" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cidadeInstance?.bairro?}" var="b">
    <li><g:link controller="bairro" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="bairro" action="create" params="['cidade.id': cidadeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'bairro.label', default: 'Bairro')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="cidade.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${events.Estado.list()}" optionKey="id" required="" value="${cidadeInstance?.estado?.id}" class="many-to-one"/>

</div>

