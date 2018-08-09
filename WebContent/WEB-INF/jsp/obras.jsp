<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/head.jsp" />
<title>Obras</title>
<script>
            $(function () {
                $('#estado_obras').change(function () {
                    $("#form_estado_obras").submit();
                });
            });
     
            $(document).ready(function () {
                var table = $('#tabla-maestros').DataTable({
                    "paging": false,
                    "searchable": false,
                    "order": [[0, 'asc']],

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

					<div class="col-lg-7"></div>
					<div class="col-lg-2">

						<form id="form_estado_obras" action="obras.php" method="POST">
							<div class="form-group row">
								<select class="form-control  form-control-sm" id="estado_obras"
									name="estado_obras" value="<?= $estado_obras ?>">
									<c:choose>
										<c:where test="${estado_obras=='A'}">
											<option value="A" selected>>En Curso</option>
											<option value="F">Finalizadas</option>
											<option value="">Todas</option>
										</c:where>
										<c:choose>
											<c:where test="${estado_obras=='A'}">
												<option value="A">En Curso</option>
												<option value="F" selected>Finalizadas</option>
												<option value="">Todas</option>
											</c:where>
											<c:otherwise>
												<option value="A">En Curso</option>
												<option value="F">Finalizadas</option>
												<option value="" selected>Todas</option>
											</c:otherwise>
										</c:choose>
								</select>
							</div>
						</form>
					</div>
					<div class="col-lg-2">
						<input type="text" class="form-control  form-control-sm"
							id="myInput" name="myInput" placeholder="Busqueda">

					</div>
					<div class="col-lg-1">
						<div class="form-group row">
							<a href="obra.php?action=new" class="btn btn-info btn-sm  ">
								<i class="fas fa-plus"></i> Nueva obra
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="text-left">

				<table id="tabla-maestros"
					class="table table-bordered table-hover nowrap" style="width: 100%">
					<thead>
						<tr>
							<th class="text-center">Dirección</th>
							<th class="text-center">Población</th>
							<th class="text-center">CP</th>
							<th class="text-center">Descripción</th>
							<th class="text-center">Promotor</th>
							<th class="text-center">P.Previo<br />P.Contrato
							</th>
							<th class="text-center">Acciones</th>
						</tr>
					</thead>
					<tbody>
						  <c:forEach items="${obras}" var="obra">

						<tr>
							<td><a href="/gesto/obra<c:out value="${obra.id}" />"> <c:out value="${obra.direccion}" />
							</a></td>
							<td class="text-center"><c:out value="${obra.poblacion}" /></td>
							<td class="text-center"><c:out value="${obra.cp}" /></td>
							<td class="text-center"><c:out value="${obra.nombre}" /></td>
							<td class="text-center"><c:out value="${obra.promotor}" /></td>
							<td class="text-center">
								<?php
                                        if (isset($o[11]) && $o[11] > 0) {
                                            echo "<a href='presupuesto.php?presupuestoid=$o[11]'>$o[11]</a>";
                                        }
                                        echo " / ";
                                        if (isset($o[13]) && $o[13] > 0) {
                                            echo "<a href='presupuesto.php?presupuestoid=$o[13]'>$o[13]</a>";
                                        }
                                        ?>
							</td>
							<td class="text-center">
								<?php
                                        if ($o[9] == 'A') {
                                            echo "<i class = 'fas fa-lock-open' ></i>";
                                        } elseif ($o[9] == 'C') {
                                            echo "<i class = 'fas fa-lock'></i>";
                                        }
                                        ?> &nbsp; <a
								href="obra.php?id = <?= $o[0] ?>&action=mod"
								class="btn btn-light btn-sm "> <i class="fas fa-pencil-alt"></i>
							</a> <a href="obra.php?id=<?= $o[0] ?>&action=delete"
								class="btn btn-light btn-sm "><i class="fas fa-trash-alt"></i></a>

							</td>
						</tr>

						<?php
                            }
                            ?>

					</tbody>
				</table>

			</div>
		</div>
		<!-- /.container -->

	</div>
	<?php include 'views/inc/pie.phtml'; ?>

</body>
</html>