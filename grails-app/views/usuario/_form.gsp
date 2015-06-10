<%@ page import="events.Usuario" %>


<!-- FOMURLARIO -->

<!-- NOME -->

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'nome', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Nome
	</label>
	<div class="col-sm-5">
		<g:textField name="nome" value="${usuarioInstance?.nome}" class="form-control"/>
	</div>
</div>

<!-- EMAIL -->

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'email', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Email
	</label>
	<div class="col-sm-5">
		<g:field type="email" name="email" value="${usuarioInstance?.email}" class="form-control"/>
	</div>
</div>

<!-- DATA DE NASCIMENTO -->



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dataNascimento', 'error')} required">	
	<label>
		Data de Nascimento
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${usuarioInstance?.dataNascimento}"  />

</div>

<!-- LOCALIDADE -->
<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'localidade','has-error')} required">
	<label class="col-sm-1 control-label">
		Localidade
	</label>
	<div class="col-sm-5">
		<g:select id="localidade" name="localidade.id" from="${events.Localidade.list()}" optionKey="id"  value="${usuarioInstance?.localidade?.id}" class="form-control"/>
	</div>
</div>


<!-- TELEFONE -->
<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefone', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Telefone
	</label>
	<div class="col-sm-2">
		<g:textField name="telefone"  value="${usuarioInstance?.telefone}" class="form-control"/>
	</div>
</div>

<!-- TEMAINTERESSE -->
<br></br>

<div class="row form-group ${hasErrors(bean: usuarioInstance, field: 'temainteresse', 'has-error')}">
	<label class="col-sm-2 control-label">
		Tema(s) de Interesse
	</label>
	<div class="col-sm-4">
		<g:select name="temainteresse" from="${events.Tema.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.temainteresse*.id}" multiple class="form-control"/>	
	</div>
</div>

<!--
<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'temainteresse', 'has-error')} ">
	<label class="col-sm-2 control-label">
		Tema(s) de Interesse
	</label>
	<div class="col-sm-2">
		<select multiple class="form-control">
		<g:select name="temainteresse" from="${events.Tema.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.temainteresse*.id}" class="many-to-many"/>
		</select>
	</div>
</div>

<!-- 
	<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">
		<label for="nome">
			<g:message code="usuario.nome.label" default="Nome" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="nome"  value="${usuarioInstance?.nome}"/>
	</div>  
-->

<!-- 
<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dataNascimento', 'error')} required">	<label for="dataNascimento">
		<g:message code="usuario.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${usuarioInstance?.dataNascimento}"  />

</div>
 -->