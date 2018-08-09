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
<title>INDUSTRIALES</title>
</head>
<body>
	<div id='contenedor'>
		<jsp:include page="inc/cabecera.jsp" />
		<jsp:include page="inc/menu.jsp" />
		<div class="container">
			<div style="margin-top: 15px; margin-bottom: 20px;">
				<div class="row h-100">
					<div class="col-lg-9 row-titulo">
						<h4>Mantenimiento de Industrial</h4>
					</div>
					<div class="col-lg-3">
						<a href="/gesto/industriales" class="btn btn-info btn-sm  "> <i
							class="fas fa-arrow-left"></i> Volver
						</a>

						<c:if test="${not empty industrial.id}">
						<a class="btn btn-dark btn-sm borraindustrial" href="#" onclick="$('#borrarIndustrial').modal('show'); return false">
						<i class="fas fa-trash-alt" ></i> Borrar</a>
						</c:if>
					</div>
				</div>
			</div>

			<form:form action="guardar" method="POST" modelAttribute="industrial">
			<form:input type="hidden" path="id" id="id" value="${industrial.id}"/>
				<div class="form-group row">
					<form:label path="nombre" for="nombre" class="col-lg-2 col-form-label">Nombre</form:label>
					<div class="col-lg-10">
						<form:input path="nombre" type="text" class="form-control" id="nombre"
							placeholder="Razón social"
							value="${industrial.nombre}"/>
					</div>
				</div>
				<div class="form-group row">
					<form:label path="nif" for="nif" class="col-lg-2 col-form-label">NIF</form:label>
					<div class="col-lg-4">
						<form:input path="nif" type="text" class="form-control" id="nif" placeholder="NIF"
							value="${industrial.nif}"/>
					</div>
					<form:label path="email" for="email" class="col-lg-1 col-form-label">E-mail</form:label>
					<div class="col-lg-5">
						<form:input path="email" type="email" class="form-control" id="email"
							placeholder="email" value="${industrial.email}"/>
					</div>
				</div>

				<div class="form-group row">
					<form:label path="direccion" for="direccion" class="col-lg-2 col-form-label">Dirección</form:label>
					<div class="col-lg-10">
						<form:input path="direccion" type="text" class="form-control" id="direccion"
							placeholder="Dirección"
							value="${industrial.direccion}"/>
					</div>
				</div>
				<div class="form-group row">
					<form:label path="codigoPostal" for="cp" class="col-lg-2 col-form-label">Código
						Postal</form:label>
					<div class="col-lg-2">
						<form:input path="codigoPostal" type="text" class="form-control" id="cp"
							placeholder="Código Postal"
							value="${industrial.codigoPostal}"/>
					</div>
					<form:label path="poblacion" for="Población" class="col-lg-2 col-form-label">Población</form:label>
					<div class="col-lg-6">
						<form:input path="poblacion" type="text" class="form-control" id="poblacion"
							placeholder="Población"
							value="${industrial.poblacion}"/>
					</div>
				</div>
				<div class="form-group row">
					<form:label path="provincia" for="provincia" class="col-lg-2 col-form-label">Provincia</form:label>
					<div class="col-lg-4">
						<form:input path="provincia" type="text" class="form-control" id="provincia"
							placeholder="Provincia"
							value="${industrial.provincia}"/>
					</div>
					<form:label path="telefono" for="telefono" class="col-lg-1 col-form-label">Teléfono</form:label>
					<div class="col-lg-5">
						<form:input path="telefono" type="tel" class="form-control" id="telefono"
							placeholder="Teléfono"
							value="${industrial.telefono}"/>
					</div>
				</div>

				<div class="form-group row">
					<form:label path="iva" class="col-lg-2 col-form-label" for="iva">IVA</form:label>
					<div class="col-lg-2">
						<form:select path="iva" class="form-control" id="iva">
							<option value="" selected disabled hidden>Selecciona</option>
							<c:forEach items="${ivas}" var="iva">
								<c:choose>
									<c:when test="${iva.valor == industrial.iva}">
										<option value="${iva.valor}" selected><c:out
												value="${iva.valor}" /></option>
									</c:when>
									<c:otherwise>
										<option value="${iva.valor}"><c:out
												value="${iva.valor}"/></option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</form:select>
					</div>
					<form:label path="retencion" class="col-lg-2 col-form-label" for="retencion">Retencion</form:label>
					<div class="col-lg-2">
						<form:select path="retencion" class="form-control" id="retencion">
							<option value="" selected disabled hidden>Selecciona</option>
							<c:forEach items="${retenciones}" var="retencion">
								<c:choose>
									<c:when test="${retencion.valor == industrial.retencion}">
										<option value="${retencion.valor}" selected><c:out
												value="${retencion.valor}" /></option>
									</c:when>
									<c:otherwise>
										<option value="${retencion.valor}"><c:out
												value="${retencion.valor}" /></option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</form:select>
					</div>

					<form:label path="formaPago" class="col-lg-2 col-form-label" for="formapago">Forma
						Pago</form:label>
					<div class="col-lg-2">
						<form:select path="idFormaPago" class="form-control" id="formapago">
							<option value="" selected disabled hidden>Selecciona</option>
							<c:forEach items="${formasPago}" var="formaPago">
								<c:choose>
									<c:when
										test="${formaPago.nombre == industrial.formaPago.nombre}">
										<option value="${formaPago.id}" selected><c:out
												value="${formaPago.nombre}" /></option>
									</c:when>
									<c:otherwise>
										<option value="${formaPago.id}"><c:out
												value="${formaPago.nombre}" /></option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</form:select>
					</div>
				</div>

				<hr />
				<div class="form-group row">
					<div class="col-lg-12">
						<button type="submit" class="btn btn-success">
							<i class="fas fa-save"></i> Grabar
						</button>
					</div>
				</div>
			</form:form>
		</div>
		<!-- /.container -->
		<jsp:include page="industrialbaja.jsp" />
		<jsp:include page="inc/pie.jsp" />
	</div>
	<script>
            $("a.borraindustrial").on('click', function () {
                id = $( "#id" ).val();              
                nombre = $( "#nombre" ).val();
                direccion = $( "#direccion" ).val();                
                cp = $( "#cp" ).val();
                poblacion = $( "#poblacion" ).val();
                $("a#i_confirmlink").attr("href", id+"/eliminar")
                $("#i_nombre").html(nombre);
                $("#i_direccion").html(direccion);
                $("#i_poblacion").html(cp+' - '+poblacion);  
                $('#borrarIndustrial').modal('show');
            });
        </script>
</body>
</html>
