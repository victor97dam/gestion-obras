<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade" id="borrarUsuario" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-lg" role="document">

				<div class="modal-content">
					<div class="modal-body">
						<h4>Baja de usuario</h4>
                    <hr />
                    <div class="form-group row">                       
                        <div class="col-sm-4">
                            <strong>Login</strong>
                        </div>
                        <div class="col-sm-8">
                            <span id="u_login"></span>
                        </div>
                    </div>
                    <div class="form-group row">                       
                        <div class="col-sm-4">
                            <strong>Nombre</strong>
                        </div>
                        <div class="col-sm-8">
                            <span id="u_nombre"></span>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <hr />
                        </div> 
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <!-- <button type="submit" class="btn btn-danger btn-sm  ">
                                 <i class="fas fa-trash-alt" ></i> Confirmar baja
                                 </button>-->
                            <a id="u_confirmlink" href="eliminar" class="btn btn-danger btn-sm  ">
                                <i class="fas fa-trash-alt" ></i> Confirmar baja
                            </a>
                        </div>
                        <div class="col-sm-6 text-right">
                            <a  href="borrar" onclick="$('#borrarUsuario').modal('hide'); return false" class="btn btn-secondary btn-sm"><i class='fas fa-times-circle ' ></i>&nbsp;Cancelar</a>
                        </div>
                    </div>

                </div>

            </form>

        </div>

    </div>
</div>

<script>
//    $('#borrarIndustrial').modal('show');
    $('.modal-content').resizable({
        //alsoResize: ".modal-dialog",
        //minHeight: 150
    });
    $('.modal-dialog').draggable();

    $('#myModal').on('show.bs.modal', function () {
        $(this).find('.modal-body').css({
            'max-height': '100%'
        });
    });
</script>
