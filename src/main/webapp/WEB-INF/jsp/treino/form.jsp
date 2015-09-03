<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head></head>
<body>
	<h1>Cadastrar Treino</h1>
	<form:form modelAttribute="treino" method="post" action="/treino/criar">

		<form:hidden path="idTreino" value="${treino.idTreino}" />

		<form:label path="nome">Nome Treino</form:label>
		<form:input path="nome" value="${treino.nome}" />
		<br />

		<form:label path="observacao">Observacao</form:label>
		<form:input path="observacao" value="${treino.observacao}" />
		<br />

		<form:label path="pessoa.idPessoa">ID PESSOA</form:label>
		<form:input path="pessoa.idPessoa" value="${treino.pessoa.idPessoa}" />
		<br />

		<h4>Exercicios</h4>
		<table border="1">
			<thead>
				<tr>
					<th>Id Exercicio</th>
					<th>Selecione</th>
					<th>Nome</th>
				</tr>
			</thead>
			<c:forEach items="${exercicios}" var="exercicio">
				<tr>
					<td>${exercicio.idExercicio}</td>
					<td><input type="checkbox" value="${exercicio.idExercicio}"></td>
					<td>${exercicio.nome}</td>
				</tr>
			</c:forEach>
		</table>
		</br>
		</br>

		<form:button type="submit">Cadastrar</form:button>
	</form:form>



</body>
</html>