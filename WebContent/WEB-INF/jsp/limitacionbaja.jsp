
<div class="modal fade" id="borrarLimitacion" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog modal-lg" role="document">

        Content
        <div class="modal-content">

            <div class="modal-body">
                <h4>Baja de la limitacion</h4>
                <hr />
                <div class="form-group row">                       
                    <div class="col-sm-4">
                        <strong>Concepto</strong>
                    </div>
                    <div class="col-sm-8">
                        <span id="i_concepto"></span>
                    </div>
                </div>
                <div class="form-group row">                       
                    <div class="col-sm-4">
                        <strong>Valor</strong>
                    </div>
                    <div class="col-sm-8">
                         <span id="i_valor"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <hr />
                    </div> 
                </div>
                <div class="row">
                    <div class="col-sm-6">
                     
                        <a id="i_confirmlink" href="eliminar" class="btn btn-danger btn-sm  ">
                            <i class="fas fa-trash-alt" ></i> Confirmar baja
                        </a>
                    </div>
                    <div class="col-sm-6 text-right">
                        <a href="borrar"  onclick="$('#borrarLimitacion').modal('hide'); return false" class="btn btn-secondary btn-sm"><i class='fas fa-times-circle ' ></i>&nbsp;Cancelar</a>
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
