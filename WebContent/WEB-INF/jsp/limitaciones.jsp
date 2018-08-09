<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<jsp:include page="inc/head.jsp" />
<title>LIMITACIONES</title>
<script>
    $(document).ready(function () {
        var table = $('#tabla-maestros').DataTable({
            "paging": false,
            "searchable": false,
            "order": [[1, 'asc'], [2, 'asc']]
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

		<div class="container">
			<div style="margin-top: 15px; margin-bottom: 15px;">
				<div class="row">

					<div class="col-lg-9"></div>

					<div class="col-lg-2">
						<input type="text" class="form-control  form-control-sm"
							id="myInput" name="myInput" placeholder="Busqueda">

					</div>
					<div class="col-lg-1">
						<div class="form-group row">
							<a href="/gesto/limitacion/nuevo" class="btn btn-info btn-sm  ">
								<i class="fas fa-plus"></i> Nueva
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="text-left">

				<table id="tabla-maestros"
					class="table table-bordered table-striped">
					<thead>
						<tr>
							<th class="text-center">Concepto</th>
							<th class="text-center">Valor</th>
							<th class="text-center">Acciones</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${limitaciones}" var="limitacion">
							<tr>
								<td class="text-center"><c:out value="${limitacion.concepto}" /></td>
								<td class="text-center"><c:out value="${limitacion.valor}" /></td>
								<td class="text-center"><a
									href="/gesto/limitacion/<c:out value="${limitacion.id}"/>"
									class="btn btn-light btn-sm "> <i class="fas fa-pencil-alt"></i>
								</a> <a href="#" data-id="<c:out value="${limitacion.id}"/>"  data-concepto="<c:out value="${limitacion.concepto}"/>"  data-valor="<c:out value="${limitacion.valor}"/>"  
                                    class="btn btn-light btn-sm borralimitacion"><i class="fas fa-trash-alt" ></i></a>

								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		<!-- /.container -->
		<jsp:include page="limitacionbaja.jsp" />
		<jsp:include page="inc/pie.jsp" />
		<script>
            $("a.borralimitacion").on('click', function () {
                id = $(this).data('id');            
                concepto = $(this).data('concepto');
                valor = $(this).data('valor');     
                $("a#i_confirmlink").attr("href", "limitacion/"+id+"/eliminar")
                $("#i_concepto").html(concepto);
                $("#i_valor").html(valor);
                $('#borrarLimitacion').modal('show');
            });
        </script>
        </div>
</body>
</html>