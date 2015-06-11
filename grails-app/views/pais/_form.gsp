<%@ page import="events.Pais" %>


<!-- NOME -->
<div class="form-group ${hasErrors(bean: paisInstance, field: 'nome', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Nome
	</label>
	<div class="col-sm-5">
		<g:textField name="nome"  value="${paisInstance?.nome}" class="form-control"/>
	</div>
</div>

</div>

