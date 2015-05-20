<%@ page import="events.Pais" %>



<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pais.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${paisInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="pais.estado.label" default="Estado" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${paisInstance?.estado?}" var="e">
    <li><g:link controller="estado" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="estado" action="create" params="['pais.id': paisInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'estado.label', default: 'Estado')])}</g:link>
</li>
</ul>


</div>

