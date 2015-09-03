<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<c:if test="${empty treinos}"></c:if>
<table border="1">
	<thead>
		<tr>
			<th>Id Treino</th>
			<th>Nome</th>
			<th>Data Inicio</th>
			<th>Data Fim</th>
			<th>Observação</th>
			<th>PESSOA_ID_PESSOA</th>
			<th>Editar</th>
			<th>Remover</th>
		</tr>
	</thead>
	<tbody>

		<c:forEach items="${treinos}" var="treino">
			<tr>
				<td>${treino.idTreino}</td>
				<td>${treino.nome}</td>
				<td>${treino.dataInicio}</td>
				<td>${treino.dataFim}</td>
				<td>${treino.observacao}</td>
				<td>${treino.pessoa.idPessoa}</td>
				<td><a
					href="${pageContext.request.contextPath}/treino/editar/${treino.idTreino}">
						<i class="glyphicon glyphicon-edit"></i> Editar
				</a></td>
				<td>
					<form  method="post" action="/treino/ativar/">
						
						<input type="hidden" name="ativo" value="false" />
						<input type="hidden" name="id" value="${treino.idTreino}" />
						<input type="submit" value="Remover" />
					</form>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</html>