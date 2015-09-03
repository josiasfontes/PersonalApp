<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<c:if test="${!empty exercicios}"></c:if>
<table border="1">
	<thead>
		<tr>
			<th>Id Exercicio</th>
			<th>Nome</th>
			<th>Selecione</th>
			<th>Editar</th>
			<th>Remover</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${exercicios}" var="exercicio">
			<tr>
				<td>${exercicio.idExercicio}</td>
				<td>${exercicio.nome}</td>
				<td><input type="checkbox" value="${exercicio.idExercicio}"></td>
				<td><a
					href="${pageContext.request.contextPath}/exercicio/editar/${exercicio.idExercicio}">
						<i class="glyphicon glyphicon-edit"></i> Editar
				</a></td>
				<td> <a
					href="${pageContext.request.contextPath}/exercicio/deletar/${exercicio.idExercicio}">
						<i class="glyphicon glyphicon-trash"></i> Remover
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</html>