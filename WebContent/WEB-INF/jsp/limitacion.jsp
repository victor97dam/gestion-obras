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
<title>Limitaciones</title>
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


						<a href="/gesto/limitaciones" class="btn btn-info btn-sm  "> <i
							class="fas fa-list-ul"></i> Limitaciones
						</a>
					</div>
					<div class="col-lg-1">
						<c:if test="${not empty limitacion.id}">
						<a class="btn btn-dark btn-sm borralimitacion" href="#" onclick="$('#borrarLimitacion').modal('show'); return false">
						<i class="fas fa-trash-alt" ></i> Borrar</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<form:form action="guardar" method="POST" modelAttribute="limitacion">
					<form:input type="hidden" path="id" id="id" value="${limitacion.id}"/>
				<div class="form-group row">
					<form:label path="concepto" for="concepcto" class="col-lg-2 col-form-label">Concepto</form:label>
					<div class="col-lg-4">
						<form:select path="concepto" class="form-control" id="concepto">
							<option value="" selected disabled hidden>Selecciona</option>
							<c:choose>
									<c:when test="${limitacion.concepto == 'IVA'}">
										<option value="IVA" selected>IVA</option>
										<option value="RETENCION">RETENCION</option>
									</c:when>
									<c:when test="${limitacion.concepto == 'RETENCION'}">
										<option value="RETENCION" selected>RETENCION</option>
										<option value="IVA" >IVA</option>
									</c:when>
									<c:otherwise>
										<option value="RETENCION">RETENCION</option>
										<option value="IVA" >IVA</option>
									</c:otherwise>
								</c:choose>
						</form:select>

					</div>
				</div>
				<div class="form-group row">
					<form:label path="valor" for="valor" class="col-lg-2 col-form-label">Valor</form:label>
					<div class="col-lg-4">
						<form:input path="valor" type="text" class="form-control" id="valor"
							placeholder="Valor" value="${limitacion.valor}" required="required"/>
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
		<jsp:include page="limitacionbaja.jsp" />
		<jsp:include page="inc/pie.jsp" />
	</div>
		<script>
            $("a.borralimitacion").on('click', function () {
                id = $( "#id" ).val();              
                concepto = $( "#concepto" ).val();
                valor = $( "#valor" ).val();     
                $("a#i_confirmlink").attr("href", id+"/eliminar")
                $("#i_concepto").html(concepto);
                $("#i_valor").html(valor);
                $('#borrarLimitacion').modal('show');
            });
        </script>
</body>
</html>