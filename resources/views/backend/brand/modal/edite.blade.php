
<div class="modal fade" id="EditeBrand" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index: 9999999">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Brand Edite</h4>
            </div>
            <div class="modal-body">


                <form action="{{ route('Brands_Editeajax') }}" method="POST" id="Brand_Edite" accept-charset="utf-8">
                    @csrf

                    <div class="row" style="padding: 8px">

                          <div class="row col-md">
                                <label class="row col-sm-4">Brand Name</label>
                                <div class="row col-sm">
                                    <input type="text" class="form-control" name="brand_name" id="brand_name" placeholder="Enter your brand_name...........">
                                </div>
                          </div>
                    </div>




                    <input type="hidden" name="UsId" id="UsId">



            <div class="modal-footer">
                <button type="reset" class="btn btn-default btn-sm waves-effect waves-light">Celar Data</button>
                <button type="button" class="btn btn-default btn-sm waves-effect waves-light" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary btn-sm waves-effect waves-light">Save changes</button>
            </div>
                </form>


            </div>
        </div>
    </div>
</div>