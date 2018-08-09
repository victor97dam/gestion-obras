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
        <title>Promotores</title>
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


                            <a href="/gesto/promotores" class="btn btn-info btn-sm  ">
                                <i class="fas fa-list-ul" ></i> Promotores
                            </a>
                        </div>
                        <div class="col-lg-1">
                            <c:if test="${not empty promotor.id}">
                                <a class="btn btn-dark btn-sm borrapromotor" href="#" onclick="$('#borrarPromotor').modal('show'); return false"><i class="fas fa-trash-alt" ></i> Borrar</a>
                                <!--                           data-toggle="modal" data-target="#borrarIndustrial"-->

                            </c:if>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <form:form action="guardar" method="POST" modelAttribute="promotor">
                    <div class="hide">
                        <form:input type="hidden" path="id" id="id" value="${promotor.id}"/>
                    </div>
                    <div class="form-group row">
                        <form:label path="nombre" for="nombre" class="col-lg-2 col-form-label">Nombre</form:label>
                        <div class="col-lg-10">
                            <form:input path="nombre" type="text" class="form-control" id="nombre" placeholder="Razón social" value="${promotor.nombre}" required="required"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <form:label path="nif" for="nif" class="col-lg-2 col-form-label">NIF</form:label>
                        <div class="col-lg-4">
                            <form:input path="nif" type="text" class="form-control" id="nif" placeholder="NIF"  value="${promotor.nif}" required="required"/>
                        </div>
                        <form:label path="email" for="email" class="col-lg-1 col-form-label">E-mail</form:label>
                        <div class="col-lg-5">
                            <form:input path="email" type="email" class="form-control" id="email" placeholder="email"  value="${promotor.email}" required="required"/>
                        </div>
                    </div>

                    <div class="form-group row">
                        <form:label path="direccion" for="direccion" class="col-lg-2 col-form-label">Dirección</form:label>
                        <div class="col-lg-10">
                            <form:input path="direccion" type="text" class="form-control" id="direccion" placeholder="Dirección"  value="${promotor.direccion}" required="required"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <form:label path="cp" for="cp" class="col-lg-2 col-form-label">Código Postal</form:label>
                        <div class="col-lg-2">
                            <form:input path="cp" type="text" class="form-control" id="cp" placeholder="Código Postal"  value="${promotor.cp}" required="required"/>
                        </div>
                        <form:label path="poblacion" for="Población" class="col-lg-2 col-form-label">Población</form:label>
                        <div class="col-lg-6">
                            <form:input path="poblacion" type="text" class="form-control" id="poblacion" placeholder="Población"  value="${promotor.poblacion}" required="required"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <form:label path="provincia" for="provincia" class="col-lg-2 col-form-label">Provincia</form:label>
                        <div class="col-lg-4">
                            <form:input path="provincia" type="text" class="form-control" id="provincia" placeholder="Provincia"  value="${promotor.provincia}" required="required"/>
                        </div>
                        <form:label path="telefono" for="telefono" class="col-lg-1 col-form-label">Teléfono</form:label>
                        <div class="col-lg-5">
                            <form:input path="telefono" type="tel" class="form-control" id="telefono" placeholder="Teléfono"  value="${promotor.telefono}" required="required"/>
                        </div>
                    </div>


                    <hr />
                    <div class="form-group row">
                        <div class="col-lg-6">
                            <button type="submit" class="btn btn-success"> <i class="fas fa-save" ></i> Grabar</button>
                        </div>
                    </div>
                </form:form>

            </div><!-- /.container -->



        </div>       
        <jsp:include page="promotorbaja.jsp" />
		<jsp:include page="inc/pie.jsp" />
        <script>
            $("a.borrapromotor").on('click', function () {
                id = $( "#id" ).val();               
                nombre = $( "#nombre" ).val();
                direccion = $( "#direccion" ).val();                
                cp = $( "#cp" ).val();
                poblacion = $( "#poblacion" ).val();
                $("a#p_confirmlink").attr("href", id+"/eliminar");
                $("#p_nombre").html(nombre);
                $("#p_direccion").html(direccion);
                $("#p_poblacion").html(cp+' - '+poblacion);  
                $('#borrarPromotor').modal('show');
            });
        </script>
    </body>
</html>
