<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head></head>
<body>
	<h1>Cadastrar Medidas</h1>
	<form:form modelAttribute="medidas" method="post"
		action="/medidas/criar">

		<form:hidden path="idMedidas" value="${medidas.idMedidas}" />
		<form:label path="altura">Altura</form:label>
		<form:input path="altura" value="${medidas.altura}" />
		<br />

		<form:label path="peso">Peso</form:label>
		<form:input path="peso" value="${medidas.peso}" />
		<br />

		<form:label path="bicepsDireito">Biceps Direito</form:label>
		<form:input path="bicepsDireito" value="${medidas.bicepsDireito}" />
		<br />

		<form:label path="bicepsEsquerdo">Biceps Esquerdo</form:label>
		<form:input path="bicepsEsquerdo" value="${medidas.bicepsEsquerdo}" />
		<br />

		<form:label path="tricepsDireito">Triceps Direito</form:label>
		<form:input path="tricepsDireito" value="${medidas.tricepsDireito}" />
		<br />

		<form:label path="tricepsEsquerdo">Triceps Esquerdo</form:label>
		<form:input path="tricepsEsquerdo" value="${medidas.tricepsEsquerdo}" />
		<br />

		<form:label path="peitoral">Peitoral</form:label>
		<form:input path="peitoral" value="${medidas.peitoral}" />
		<br />

		<form:label path="abdomen">Abdomen</form:label>
		<form:input path="abdomen" value="${medidas.abdomen}" />
		<br />

		<form:label path="quadril">Quadril</form:label>
		<form:input path="quadril" value="${medidas.quadril}" />
		<br />

		<form:label path="coxaDireita">Coxa Direita</form:label>
		<form:input path="coxaDireita" value="${medidas.coxaDireita}" />
		<br />
		
		<form:label path="coxaEsquerda">Coxa Esquerda</form:label>
		<form:input path="coxaEsquerda" value="${medidas.coxaEsquerda}" />
		<br />
		
		<form:label path="gluteo">Gluteo</form:label>
		<form:input path="gluteo" value="${medidas.gluteo}" />
		<br />
		
		<form:label path="panturrilhaDireita">Panturrilha Direita</form:label>
		<form:input path="panturrilhaDireita" value="${medidas.panturrilhaDireita}" />
		<br />
		
		<form:label path="panturrilhaEsquerda">Panturrilha Esquerda</form:label>
		<form:input path="panturrilhaEsquerda" value="${medidas.panturrilhaEsquerda}" />
		<br />

		<form:label path="pessoa.idPessoa">ID PESSOA</form:label>
		<form:input path="pessoa.idPessoa" value="${medidas.pessoa.idPessoa}" />
		<br />
		<form:button type="submit">Enviar</form:button>
	</form:form>

</body>
</html>