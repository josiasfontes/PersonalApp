<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<if test="${!empty medidas}">
<table border="1">
	<thead>
		<tr>
			<th>Id Medidas</th>
			<th>Altura</th>
			<th>Peso</th>
			<th>Biceps Direito</th>
			<th>Biceps Esquerdo</th>
			<th>Triceps Direito</th>
			<th>Triceps Esquerdo</th>
			<th>Peitoral</th>
			<th>Abdomen</th>
			<th>Quadril</th>
			<th>Coxa Direita</th>
			<th>Coxa Esquerda</th>
			<th>Gluteo</th>
			<th>Panturrilha Direita</th>
			<th>Panturrilha Esquerda</th>
			<th>Id Pessoa</th>
			<th>Editar</th>
			<th>Remover</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${medidas}" var="medida">
			<tr>
				<td>${medida.idMedidas}</td>
				<td>${medida.altura}</td>
				<td>${medida.peso}</td>
				<td>${medida.bicepsDireito}</td>
				<td>${medida.bicepsEsquerdo}</td>
				<td>${medida.tricepsDireito}</td>
				<td>${medida.tricepsEsquerdo}</td>
				<td>${medida.peitoral}</td>
				<td>${medida.abdomen}</td>
				<td>${medida.quadril}</td>
				<td>${medida.coxaDireita}</td>
				<td>${medida.coxaEsquerda}</td>
				<td>${medida.gluteo}</td>
				<td>${medida.panturrilhaDireita}</td>
				<td>${medida.panturrilhaEsquerda}</td>
				<td>${medida.pessoa.idPessoa}</td>
				<td><a
					href="${pageContext.request.contextPath}/medidas/editar/${medida.idMedidas}">
						<i class="glyphicon glyphicon-edit"></i> Editar
				</a></td>
				<td><a
					href="${pageContext.request.contextPath}/medidas/deletar/${medida.idMedidas}">
						<i class="glyphicon glyphicon-trash"></i> Remover
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</html>