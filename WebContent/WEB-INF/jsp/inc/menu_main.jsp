<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="btn-group">
	<a href="obras" class="btn btn-info">Obras</a>
</div>



<div class="btn-group">
	<button type="button" class="btn btn-primary" data-toggle="dropdown">Mantenimientos</button>
	<button type="button"
		class="btn btn-primary dropdown-toggle dropdown-toggle-split"
		data-toggle="dropdown"></button>
	<div class="dropdown-menu">
		<a class="dropdown-item" href="/gesto/industriales">Industriales</a> <a
			class="dropdown-item" href="/gesto/promotores">Promotores</a> <a
			class="dropdown-item" href="/gesto/limitaciones">Limitaciones</a> <a
			class="dropdown-item" href="/gesto/usuarios">Usuarios</a> <a
			class="dropdown-item" href="/gesto/password">Password</a> <a
			class="dropdown-item" href="#">Copia de Seguridad</a>
	</div>
</div>
<c:if test="${not empty id}">
	<span style='float: right; font-size: 0.8em'>id: ${id}</span>
</c:if>
