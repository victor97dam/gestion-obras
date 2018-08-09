<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <script>
            $(document).ready(function () {
                var table = $('#tabla-maestros').DataTable({
                    "paging": false,
                    "searchable": false,
                    "order": [[2, 'asc']],
                    "columnDefs": [
                        {"visible": false, "targets": 0}
                    ]
                });
                // #myInput is a <input type="text"> element
                $('#myInput').on('keyup', function () {
                    table.search(this.value).draw();
                });
                $('.dataTables_filter').hide();
            });
        </script>
    <head>
        <jsp:include page="inc/head.jsp"/>
        <title>Industriales</title>
    </head>
    <body>
        <div id='contenedor'>
            <jsp:include page="inc/cabecera.jsp"/>
            <jsp:include page="inc/menu.jsp"/>
            <div class="container">
                <div style="margin-top: 15px; margin-bottom: 15px;">
                    <div class="row h-100">

                        <div class="col-lg-8"><h4>Industriales</h4></div>
                        <div class="col-lg-1">
                            <div class="form-group row">
                                <a href="/gesto/industrial/nuevo" class="btn btn-info btn-sm  ">
                                <i class="fas fa-plus" ></i> Nuevo
                            </a>
                                </div>
                             </div>
                             <div class="col-lg-3">
                                    <input type="text" class="form-control  form-control-sm" id="myInput" name="myInput" placeholder="Busqueda">
                            </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <div class="text-left">


                    <table id="tabla-maestros" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>NIF</th>
                                <th>Nombre</th>
                                <th><spring:message code="industriales.direccion"/></th>
                                <th>CP / Población</th>
                                <th>Teléfono</th>
                                <th>Email</th>
                                <th>IVA</th>
                                <th>Ret.</th>
                                <th>Forma Pago</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${industriales}" var="industrial">
                            <tr>
                                <td class="text-center"><c:out value="${industrial.nif}" /></td>
                                <td class="text-center"><c:out value="${industrial.nombre}" /></td>
                                <td class="text-center"><c:out value="${industrial.direccion}" /></td>
								<td class="text-center"><c:out value="${industrial.codigoPostal}" /> - <c:out value="${industrial.poblacion}" /></td>
                                <td class="text-center"><c:out value="${industrial.telefono}" /></td>
                                <td class="text-center"><c:out value="${industrial.email}" /></td>
                                <td class="text-center"><c:out value="${industrial.iva}%"/></td>
                                <td class="text-center"><c:out value="${industrial.retencion}%" /></td>
                                <td class="text-center"><c:out value="${industrial.formaPago.nombre}" /></td>
                                <td class="text-center">
                                    <a href="/gesto/industrial/<c:out value="${industrial.id}"/>" class="btn btn-light btn-sm ">
                                        <i class="fas fa-pencil-alt" ></i> 
                                    </a>
                                   <a href="#" data-id="<c:out value="${industrial.id}"/>"  data-nombre="<c:out value="${industrial.nombre}"/>"  data-direccion="<c:out value="${industrial.direccion}"/>"  
                                   data-poblacion="<c:out value="${industrial.codigoPostal}"/> - <c:out value="${industrial.provincia}"/>" class="btn btn-light btn-sm borraindustrial"><i class="fas fa-trash-alt" ></i></a>

                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div><!-- /.container -->
            <jsp:include page="industrialbaja.jsp"/>
            <jsp:include page="inc/pie.jsp"/>
           <script>
            $("a.borraindustrial").on('click', function() {
                id = $(this).data('id');
                nombre = $(this).data('nombre');
                direccion = $(this).data('direccion');
                poblacion = $(this).data('poblacion');
                $("a#i_confirmlink").attr("href", "industrial/"+id+"/eliminar");
                $("#i_nombre").html(nombre);
                $("#i_direccion").html(direccion);
                $("#i_poblacion").html(poblacion);               
                $('#borrarIndustrial').modal('show');
            })
            </script>
        </div>
    </body>
</html>
