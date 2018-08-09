<div class="modal fade" id="borrarPromotor" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog modal-lg" role="document">


        <div class="modal-content">
           
                <div class="modal-body">
                    <h4>Baja del promotor</h4>
                    <hr />
                    <div class="form-group row">                       
                        <div class="col-sm-4">
                            <strong>Nombre</strong>
                        </div>
                        <div class="col-sm-8">
                           <span id="p_nombre"></span>
                        </div>
                    </div>
                    <div class="form-group row">                       
                        <div class="col-sm-4">
                            <strong>Dirección</strong>
                        </div>
                        <div class="col-sm-8">
                            <span id="p_direccion"></span>
                        </div>
                    </div>
                    <div class="form-group row">                       
                        <div class="col-sm-4">
                            <strong>CP / Población</strong>
                        </div>
                        <div class="col-sm-8">
                           <span id="p_poblacion"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <hr />
                        </div> 
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
<!--                            <button type="submit" class="btn btn-danger btn-sm  ">
                                <i class="fas fa-trash-alt" ></i> Confirmar baja
                            </button>-->
                            <a id="p_confirmlink" href="#" class="btn btn-danger btn-sm  ">
                                <i class="fas fa-trash-alt" ></i> Confirmar baja
                            </a>
                            
                        </div>
                        <div class="col-sm-6 text-right">
                            <a href="borrar" onclick="$('#borrarPromotor').modal('hide'); return false" class="btn btn-secondary btn-sm"><i class='fas fa-times-circle ' ></i>&nbsp;Cancelar</a>
                        </div>
                    </div>

                </div>

         

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
