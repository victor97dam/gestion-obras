<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="inc/head.jsp"/>
        <title>Usuarios</title>
        <script>
            $(document).ready(function () {
                var table = $('#tabla-maestros').DataTable({
                    "paging": false,
                    "searchable": false
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
           <jsp:include page="inc/cabecera.jsp"/>
            <jsp:include page="inc/menu.jsp"/>
            <div class="container">
                <div style="margin-top: 15px; margin-bottom: 15px;">
                    <div class="row">

                        <div class="col-lg-9">
                        </div>

                        <div class="col-lg-2">
                            <input type="text" class="form-control  form-control-sm" id="myInput" name="myInput" placeholder="Busqueda">

                        </div>
                        <div class="col-lg-1">
                            <div class="form-group row">
                                <a href="/gesto/usuario/nuevo" class="btn btn-info btn-sm  ">
                                    <i class="fas fa-plus" ></i> Nuevo
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="text-left">

                    <table id="tabla-maestros" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th class="text-center">Login</th>
                                <th class="text-center">Nombre</th>
                                <th class="text-center">Apellidos</th>
                                <th class="text-center">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${usuarios}" var="usuario">

                                <tr>
                                    <td class="text-center"><c:out value="${usuario.login}" /></td>
                                    <td class="text-center"><c:out value="${usuario.nombre}" /></td>
                                    <td class="text-center"><c:out value="${usuario.apellidos}" /></td>
                                    <td  class="text-center">
                                        <a href="/gesto/usuario/<c:out value="${usuario.login}" />" class="btn btn-light btn-sm ">
                                            <i class="fas fa-pencil-alt" ></i> 
                                        </a>
                                        <a href="#"  data-login="<c:out value="${usuario.login}" />"  data-nombre="<c:out value="${usuario.nombre}" />"   data-apellidos="<c:out value="${usuario.apellidos}" />" class="borrausuario btn btn-light btn-sm "><i class="fas fa-trash-alt" ></i></a>

                                    </td>
                                </tr>
                               </c:forEach>

                        </tbody>
                    </table>

                </div>
            </div><!-- /.container -->

        </div>
        <jsp:include page="usuariobaja.jsp"/>
        <jsp:include page="inc/pie.jsp"/>
         <script>
            $("a.borrausuario").on('click', function () {
                apellidos = $(this).data('apellidos');
                nombre = $(this).data('nombre');
                login = $(this).data('login');
                $("a#u_confirmlink").attr("href", "usuario/"+login+"/eliminar")
                $("#u_nombre").html(nombre);
                $("#u_login").html(login);
                $("#u_apellidos").html(apellidos);
                $('#borrarUsuario').modal('show');
            })
        </script>
    </body>
</html>