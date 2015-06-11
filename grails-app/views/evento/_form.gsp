<%@ page import="events.Evento" %>


<!-- FOMURLARIO -->

	<!-- NOME -->
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'nome', 'has-error')} required">
		<label  class="col-sm-1 control-label" style="text-align:left" >
			Nome
		</label>
		<div class="col-sm-5">
			<g:textField name="nome" value="${eventoInstance?.nome}" class="form-control"/>
		</div>
	</div>
	
	<!-- Data de Inicio -->
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'dataInicio', 'has-error')} required">
		<label class="col-sm-2 control-label" style="text-align:left !important">
			Data do início
		</label>
		<div class="col-sm-5">
			<g:datePicker name="dataInicio" precision="day"  value="${eventoInstance?.dataInicio}" class="form-control" />
		</div>
	</div>
	
	
	<!-- Data de fim -->
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'dataFim', 'has-error')} required">
		<label class="col-sm-2 control-label" style="text-align:left">
			Data do fim
		</label>
		<div class="col-sm-5">
			<g:datePicker name="dataFim" precision="day"  value="${eventoInstance?.dataFim}" class="form-control" />
		</div>
	</div>
	
	<!-- Descrição -->
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'descricao', 'has-error')} required">
		<label class="col-sm-1 control-label" style="text-align:left">
			Descrição
		</label>
		<div class="col-sm-5">
			<g:textField name="descricao"  value="${eventoInstance?.descricao}" class="form-control"/>
		</div>
	</div>
	
	<!-- Localidade -->
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'local', 'has-error')} ">
		<label  class="col-sm-1 control-label">
			Local
		</label>
		<div class="col-sm-5">
			<g:select name="local" from="${events.Localidade.list()}" optionKey="id" value="${eventoInstance?.local*.id}" class="select2-container populate placeholder select2-dropdown-open select2-drop-above form-control"/>
		</div>
	</div>
	
	<!-- Evento público??? -->
	
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'publico', 'has-error')} required">
		<label class="col-sm-1 control-label" style="text-align:left">
			Público 
		</label>
		<div class="col-sm-2">
			<g:checkBox name="publico" value="${eventoInstance?.publico}" class="checkbox"/>
		</div>
	</div>
	
	<!-- Tema -->
		<div class="form-group ${hasErrors(bean: eventoInstance, field: 'tema', 'has-error')} ">
			<label class="col-sm-1 control-label" style="text-align:left">
				Tema
			</label>
			<div class="col-sm-5">
				<g:select name="tema" from="${events.Tema.list()}" optionKey="id" value="${eventoInstance?.tema*.id}" class="select2-container populate placeholder select2-dropdown-open select2-drop-above form-control"/>
			</div>
		</div>
	
	
	<!-- Usuario -->
	
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'usuario', 'has-error')} required">
		<label class="col-sm-1 control-label" style="text-align:left">
			Usuário
		</label>
		<div class="col-sm-3">
			<g:select id="usuario" name="usuario.id" from="${events.Usuario.list()}" optionKey="id"  value="${eventoInstance?.usuario?.id}" class="select2-container populate placeholder select2-dropdown-open select2-drop-above form-control"/>
		</div>
	</div>
	
<!-- 	
	
	
	<div class="form-group ${hasErrors(bean: eventoInstance, field: 'convite', 'has-error')} ">
		<label for="convite">
			<g:message code="evento.convite.label" default="Convite" />
		</label>
		<ul class="one-to-many">
			<g:each in="${eventoInstance?.convite?}" var="c">
	    		<li>
	    			<g:link controller="convite" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link>
	    		</li>
			</g:each>
			<li class="add">
				<g:link controller="convite" action="create" params="['evento.id': eventoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'convite.label', default: 'Convite')])}</g:link>
			</li>
		</ul>
		<!-- Convite -->
</div>

