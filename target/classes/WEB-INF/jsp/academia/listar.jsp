<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<if test="${!empty academias}">
<table border="1">
	<thead>
		<tr>
			<th>Id Academia</th>
			<th>Razão Social</th>
			<th>Data de Cadastro</th>
			<th>CNPJ</th>
			<th>Nome Responsável</th>
			<th>Cep</th>
			<th>Logradouro</th>
			<th>Bairro</th>
			<th>Numero</th>
			<th>Complemento</th>
			<th>Cidade</th>
			<th>Estado</th>
			<th>Editar</th>
			<th>Remover</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${academias}" var="academia">
			<tr>
				<td>${academia.idAcademia}</td>
				<td>${academia.razaosocial}</td>
				<td>${academia.dataCadastro}</td>
				<td>${academia.cnpj}</td>
				<td>${academia.nomeresponsavel}</td>
				<td>${academia.endereco.cep}</td>
				<td>${academia.endereco.logradouro}</td>
				<td>${academia.endereco.bairro}</td>
				<td>${academia.endereco.numero}</td>
				<td>${academia.endereco.complemento}</td>
				<td>${academia.endereco.cidade}</td>
				<td>${academia.endereco.estado}</td>

				<td><a
					href="${pageContext.request.contextPath}/academia/editar/${academia.idAcademia}">
						<i class="glyphicon glyphicon-edit"></i> Editar
				</a></td>
				<td> 
				<a
					href="${pageContext.request.contextPath}/academia/deletar/${academia.idAcademia}">
						<i class="glyphicon glyphicon-trash"></i> Remover
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</html>