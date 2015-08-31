<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<if test="${!empty pessoas}">
<table border="1">
	<thead>
		<tr>
			<th>Id Pesssoa</th>
			<th>Nome</th>
			<th>CPF</th>
			<th>Sexo</th>
			<th>Idade</th>
			<th>Email</th>
			<th>Telefone</th>
			<th>Data</th>
			<th>Id Academia</th>
			<th>Id Endereco</th>
			<th>Status Mensalidade</th>
			<th>Valor Mensalidade</th>
			<th>Editar</th>
			<th>Remover</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${pessoas}" var="pessoa">
			<tr>
				<td>${pessoa.idPessoa}</td>
				<td>${pessoa.nome}</td>
				<td>${pessoa.cpf}</td>
				<td>${pessoa.sexo}</td>
				<td>${pessoa.idade}</td>
				<td>${pessoa.email}</td>
				<td>${pessoa.telefone}</td>
				<td>${pessoa.dataCadastro}</td>
				<td>${pessoa.academia.idAcademia}</td>
				<td>${pessoa.endereco.idEndereco}</td>
				<td>${pessoa.mensalidade.status}</td>
				<td>${pessoa.mensalidade.valor}</td>

				<td><a
					href="${pageContext.request.contextPath}/pessoa/editar/${pessoa.idPessoa}">
						<i class="glyphicon glyphicon-edit"></i> Editar
				</a></td>
				<td> 
				<a
					href="${pageContext.request.contextPath}/pessoa/deletar/${pessoa.idPessoa}">
						<i class="glyphicon glyphicon-trash"></i> Remover
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</html>