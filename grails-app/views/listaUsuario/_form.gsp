<%@ page import="events.ListaUsuario" %>



<div class="fieldcontain ${hasErrors(bean: listaUsuarioInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="listaUsuario.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${listaUsuarioInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: listaUsuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="listaUsuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${listaUsuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: listaUsuarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="listaUsuario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${listaUsuarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: listaUsuarioInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="listaUsuario.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${listaUsuarioInstance?.telefone}"/>

</div>

