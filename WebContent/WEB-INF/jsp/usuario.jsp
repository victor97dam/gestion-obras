<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/head.jsp" />
<title>USUARIOS</title>
</head>
<body>
	<div id='contenedor'>
		<jsp:include page="inc/cabecera.jsp" />
		<jsp:include page="inc/menu.jsp" />



		<div class="container-fluid">
			<div style="margin-top: 15px; margin-bottom: 15px;">
				<div class="row">

					<div class="col-lg-9"></div>
					<div class="col-lg-2">


						<a href="/gesto/usuarios" class="btn btn-info btn-sm  "> <i
							class="fas fa-list-ul"></i> Usuarios
						</a>
					</div>
					<div class="col-lg-1">
						<c:if test="${not empty usuario.login}">
							<a class="btn btn-dark btn-sm borrausuario" href="#"
								onclick="$('#borrarUsuario').modal('show'); return false"><i
								class="fas fa-trash-alt"></i> Borrar</a>
						</c:if>
						<!--                           data-toggle="modal" data-target="#borrarIndustrial"-->

						<?php } ?>
					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<form:form action="guardar" method="POST" modelAttribute="usuario">

				<div class="form-group row">
					<form:label path="login" for="valor"
						class="col-lg-2 col-form-label">Login</form:label>
					<div class="col-lg-4">
						<form:input path="login" type="text" class="form-control" id="login"
							name="login" placeholder="login" value="${usuario.login}"
							required="required" />
					</div>
				</div>
				<div class="form-group row">
					<form:label path="password" for="valor"
						class="col-lg-2 col-form-label">Password</form:label>
					<div class="col-lg-4">
						<form:input path="password" type="password" class="form-control"
							id="password" name="password" placeholder="contraseña"
							value="${usuario.password}" required="required" />
					</div>
				</div>
				<div class="form-group row">
					<form:label path="nombre" for="Nombre"
						class="col-lg-2 col-form-label">Nombre</form:label>
					<div class="col-lg-4">
						<form:input path="nombre" type="text" class="form-control"
							id="nombre" name="nombre" placeholder="Nombre"
							value="${usuario.nombre}" required="required" />
					</div>
					<form:label path="apellidos" for="Nombre"
						class="col-lg-2 col-form-label">Apellidos</form:label>
					<div class="col-lg-4">
						<form:input path="apellidos" type="text" class="form-control"
							id="apellidos" name="apellidos" placeholder="Apellidos"
							value="${usuario.apellidos}" required="required" />
					</div>
				</div>
				<hr />
				<div class="form-group row">
					<div class="col-lg-6">
						<button type="submit" class="btn btn-success">
							<i class="fas fa-save"></i> Grabar
						</button>
					</div>
				</div>
			</form:form>

		</div>
		<!-- /.container -->
		<jsp:include page="usuariobaja.jsp" />
		<jsp:include page="inc/pie.jsp" />
	</div>

	<script>
		$("a.borrausuario").on('click', function() {
			nombre = $("#nombre").val();
			apellidos = $("#apellidos").val();
			login = $("#login").val();
			$("a#u_confirmlink").attr("href", login + "/eliminar")
			$("#u_nombre").html(nombre + ' ' + apellidos);
			$("#u_login").html(login);
			$('#borrarUsuario').modal('show');
		});
	</script>
</body>
</html>
