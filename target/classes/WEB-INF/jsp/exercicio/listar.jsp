<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<if test="${!empty exercicios}">
<table border="1">
	<thead>
		<tr>
			<th>Id Exercicio</th>
			<th>Nome</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${exercicios}" var="exercicio">
			<tr>
				<td>${exercicio.idExercicio}</td>
				<td>${exercicio.nome}</td>
				<td><a
					href="${pageContext.request.contextPath}/exercicio/editar/${exercicio.idExercicio}">
						<i class="glyphicon glyphicon-edit"></i> Editar
				</a> <a
					href="${pageContext.request.contextPath}/exercicio/deletar/${exercicio.idExercicio}">
						<i class="glyphicon glyphicon-trash"></i> Remover
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</html>