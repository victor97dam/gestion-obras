<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${not empty obra_activa}">
            <div class="btn-group">
                <button type="button" class="btn btn-info"  data-toggle="dropdown">Presupuestos</button>
                <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split"  data-toggle="dropdown">
                </button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="presupuesto?obraid=<?=$obra_activa_id?>&tipo=P">Presupuesto previo</a>
                    <a class="dropdown-item" href="presupuesto?obraid=<?=$obra_activa_id?>&tipo=C">Presupuesto contrato</a>
                </div>
               
            </div>

            <div class="btn-group">
                <a href="certificaciones" class="btn btn-info">Certificaciones</a>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-info"  data-toggle="dropdown">Informes</button>
                <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split"  data-toggle="dropdown">
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Informe de Retenciones</a>
                    <a class="dropdown-item" href="#">Informe de Pago a Proveedores</a>
                    <a class="dropdown-item" href="#">Informe por Capitulos/SubCapitulos</a>
                    <a class="dropdown-item" href="#">Informe por partidas</a>
                    <a class="dropdown-item" href="#">Informe por partidas extra</a>
                    <a class="dropdown-item" href="#">Informe Resumen</a>
                    <a class="dropdown-item" href="#">Listado de Facturas</a>
                </div>
            </div>
</c:if>