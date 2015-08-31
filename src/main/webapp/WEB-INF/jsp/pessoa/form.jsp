<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head></head>
<body>

	<form:form modelAttribute="pessoa" method="post" action="/pessoa/criar">

		<form:label path="nome">Nome</form:label>
		<form:hidden path="idPessoa" value="${pessoa.idPessoa}" />
		<form:input path="nome" value="${pessoa.nome}" />
		<br />

		<form:label path="cpf">CPF</form:label>
		<form:input path="cpf" value="${pessoa.cpf}" />
		<br />

		<form:label path="sexo">Sexo</form:label>
		<form:input path="sexo" value="${pessoa.sexo}" />
		<br />

		<form:label path="idade">Idade</form:label>
		<form:input path="idade" value="${pessoa.idade}" />
		<br />

		<form:label path="email">Email</form:label>
		<form:input path="email" value="${pessoa.email}" />
		<br />

		<form:label path="telefone">Telefone</form:label>
		<form:input path="telefone" value="${pessoa.telefone}" />
		<br />

		<form:label path="academia.idAcademia">ID ACADEMIA</form:label>
		<form:input path="academia.idAcademia" value="${academia.idAcademia}" />
		<br />

		<form:label path="endereco.cep">CEP</form:label>
		<form:hidden path="endereco.idEndereco"	value="${pessoa.endereco.idEndereco}" />
		<form:input path="endereco.cep" value="${pessoa.endereco.cep}" />
		<br />

		<form:label path="endereco.logradouro">Logradouro</form:label>
		<form:input path="endereco.logradouro"
			value="${pessoa.endereco.logradouro}" />
		<br />

		<form:label path="endereco.bairro">Bairro</form:label>
		<form:input path="endereco.bairro" value="${pessoa.endereco.bairro}" />
		<br />

		<form:label path="endereco.numero">Numero</form:label>
		<form:input path="endereco.numero" value="${pessoa.endereco.numero}" />
		<br />

		<form:label path="endereco.complemento">Complemento</form:label>
		<form:input path="endereco.complemento"
			value="${pessoa.endereco.complemento}" />
		<br />

		<form:label path="endereco.cidade">Cidade</form:label>
		<form:input path="endereco.cidade" value="${pessoa.endereco.cidade}" />
		<br />

		<form:label path="endereco.estado">Estado</form:label>
		<form:input path="endereco.estado" value="${pessoa.endereco.estado}" />
		<br />
		
		<form:label path="mensalidade.valor">Valor da Mensalidade</form:label>
		<form:hidden path="mensalidade.idMensalidade" value="${pessoa.mensalidade.idMensalidade}"/>
		<form:input path="mensalidade.valor" value="${pessoa.mensalidade.valor}" />
		<br />
		
		<form:label path="mensalidade.status">Status</form:label>
		<form:input path="mensalidade.status" value="${pessoa.mensalidade.status}" />
		<br />
		
		<form:button type="submit">Enviar</form:button>
	</form:form>

</body>
</html>