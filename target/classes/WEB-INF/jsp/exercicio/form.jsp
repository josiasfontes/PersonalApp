<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head></head>
<body>

	<form:form modelAttribute="exercicio" method="post" action="/exercicio/criar">

		<form:label path="nome">Nome</form:label>
		<form:hidden path="idExercicio" value="${exercicio.idExercicio}"/>
		<form:input path="nome" value="${exercicio.nome}" />

		<form:button type="submit">Enviar</form:button>
	</form:form>

</body>
</html>