<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head></head>
<body>
	<h1>Cadastrar Academia</h1>
	<form:form modelAttribute="academia" method="post" action="/academia/criar">

		<form:label path="razaosocial">Razão social</form:label>
		<form:hidden path="idAcademia" value="${academia.idAcademia}"/>
		<form:input path="razaosocial" value="${academia.razaosocial}" /><br/>
		
		<form:label path="cnpj">CNPJ</form:label>
		<form:input path="cnpj" value="${academia.cnpj}" /><br/>
		
		<form:label path="nomeresponsavel">Nome Responsável</form:label>
		<form:input path="nomeresponsavel" value="${academia.nomeresponsavel}" /><br/>
		
		<form:label path="login">Login</form:label>
		<form:input path="login" value="${academia.login}" /><br/>
		
		<form:label path="senha">Senha</form:label>
		<form:input path="senha" value="${academia.senha}" /><br/>
		
		
		
		<form:label path="endereco.cep">CEP</form:label>
		<form:hidden path="endereco.idEndereco" value="${academia.endereco.idEndereco}"/>
		<form:input path="endereco.cep" value="${academia.endereco.cep}" /><br/>
		
		<form:label path="endereco.logradouro">Logradouro</form:label>
		<form:input path="endereco.logradouro" value="${academia.endereco.logradouro}" /><br/>
		
		<form:label path="endereco.bairro">Bairro</form:label>
		<form:input path="endereco.bairro" value="${academia.endereco.bairro}" /><br/>
		
		<form:label path="endereco.numero">Numero</form:label>
		<form:input path="endereco.numero" value="${academia.endereco.numero}" /><br/>
		
		<form:label path="endereco.complemento">Complemento</form:label>
		<form:input path="endereco.complemento" value="${academia.endereco.complemento}" /><br/>
		
		<form:label path="endereco.cidade">Cidade</form:label>
		<form:input path="endereco.cidade" value="${academia.endereco.cidade}" /><br/>
		
		<form:label path="endereco.estado">Estado</form:label>
		<form:input path="endereco.estado" value="${academia.endereco.estado}" /><br/>
		
		
		<form:button type="submit">Enviar</form:button>
	</form:form>

</body>
</html>