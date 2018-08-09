<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/head.jsp" />
<title>Promotores</title>
<script>
            $(document).ready(function () {
                var table = $('#tabla-maestros').DataTable({
                    "paging": false,
                    "searchable": false,
                    "order": [[2, 'asc']]
                });
                // #myInput is a <input type="text"> element
                $('#myInput').on('keyup', function () {
                    table.search(this.value).draw();
                });
                $('.dataTables_filter').hide();
            });
        </script>
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
						<input type="text" class="form-control  form-control-sm"
							id="myInput" name="myInput" placeholder="Busqueda">

					</div>
					<div class="col-lg-1">
						<div class="form-group row">
							<a href="/gesto/promotor/nuevo" class="btn btn-info btn-sm  ">
								<i class="fas fa-plus"></i> Nuevo
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid">
			<div class="text-left">

				<table id="tabla-maestros"
					class="table table-bordered table-striped">
					<thead>
						<tr>
							<th class="text-center">NIF</th>
							<th class="text-center">Nombre</th>
							<th class="text-center">Dirección</th>
							<th class="text-center">CP / Pobl.</th>
							<th class="text-center">Provincia</th>
							<th class="text-center">Teléfono</th>
							<th class="text-center">Email</th>
							<th class="text-center">Acciones</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${promotores}" var="promotor">

							<tr>
								<td><c:out value="${promotor.nif}" /></td>
								<td><c:out value="${promotor.nombre}" /></td>
								<td><c:out value="${promotor.direccion}" /></td>
								<td><c:out value="${promotor.cp}" /> - <c:out value="${promotor.poblacion}" /></td>
								<td><c:out value="${promotor.provincia}" /></td>
								<td><c:out value="${promotor.telefono}" /></td>
								<td><c:out value="${promotor.email}" /></td>
								<td class="text-center"><a
									href="/gesto/promotor/<c:out value="${promotor.id}"/>"
									class="btn btn-light btn-sm "> <i class="fas fa-pencil-alt"></i>
								</a> <a href="#" data-id="<c:out value="${promotor.id}"/>"  data-nombre="<c:out value="${promotor.nombre}"/>"  data-direccion="<c:out value="${promotor.direccion}"/>"  
                                   data-poblacion="<c:out value="${promotor.cp}"/> - <c:out value="${promotor.provincia}"/>"
									class="btn btn-light btn-sm borrapromotor"><i
										class="fas fa-trash-alt"></i></a></td>
							</tr>
							</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		<!-- /.container -->

	</div>
	<jsp:include page="promotorbaja.jsp"/>
    <jsp:include page="inc/pie.jsp"/>
	<script>
            $("a.borrapromotor").on('click', function () {
                id = $(this).data('id');
                nombre = $(this).data('nombre');
                direccion = $(this).data('direccion');
                poblacion = $(this).data('poblacion');
                $("a#p_confirmlink").attr("href", "promotor/"+id+"/eliminar");
                $("#p_nombre").html(nombre);
                $("#p_direccion").html(direccion);
                $("#p_poblacion").html(poblacion);
                $('#borrarPromotor').modal('show');
            })
        </script>
</body>
</html>