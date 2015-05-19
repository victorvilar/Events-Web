<%@ page import="events.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="usuario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${usuarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="usuario.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${usuarioInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'localidade', 'error')} required">
	<label for="localidade">
		<g:message code="usuario.localidade.label" default="Localidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidade" name="localidade.id" from="${events.Localidade.list()}" optionKey="id" required="" value="${usuarioInstance?.localidade?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'localidadeinteresse', 'error')} ">
	<label for="localidadeinteresse">
		<g:message code="usuario.localidadeinteresse.label" default="Localidadeinteresse" />
		
	</label>
	<g:select name="localidadeinteresse" from="${events.Localidade.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.localidadeinteresse*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="usuario.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${usuarioInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'temainteresse', 'error')} ">
	<label for="temainteresse">
		<g:message code="usuario.temainteresse.label" default="Temainteresse" />
		
	</label>
	<g:select name="temainteresse" from="${events.Tema.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.temainteresse*.id}" class="many-to-many"/>

</div>

