<%@ page import="events.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="evento.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${eventoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="evento.dataInicio.label" default="Data Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${eventoInstance?.dataInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataFim', 'error')} required">
	<label for="dataFim">
		<g:message code="evento.dataFim.label" default="Data Fim" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataFim" precision="day"  value="${eventoInstance?.dataFim}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'convite', 'error')} ">
	<label for="convite">
		<g:message code="evento.convite.label" default="Convite" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventoInstance?.convite?}" var="c">
    <li><g:link controller="convite" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="convite" action="create" params="['evento.id': eventoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'convite.label', default: 'Convite')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="evento.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${eventoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'publico', 'error')} ">
	<label for="publico">
		<g:message code="evento.publico.label" default="Publico" />
		
	</label>
	<g:checkBox name="publico" value="${eventoInstance?.publico}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="evento.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${events.Usuario.list()}" optionKey="id" required="" value="${eventoInstance?.usuario?.id}" class="many-to-one"/>

</div>

