<%@ page import="events.Tema" %>



<div class="formgroup ${hasErrors(bean: temaInstance, field: 'descricao', 'has-error')} required">
	<label class="col-sm-1 control-label">
		Tema
	</label>
	<div class="col-sm-4">
		<g:textField class = "form-control" name="descricao" required="" value="${temaInstance?.descricao}"/>
	</div>
	<br></br>
</div>

