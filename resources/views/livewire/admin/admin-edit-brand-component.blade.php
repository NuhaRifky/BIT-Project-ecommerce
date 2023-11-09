<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Edit Brand
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.brands')}}" class="btn btn-success pull-right">All Brand</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form class="form-horizontal" wire:submit.prevent="updateBrand">
                            <div class="form-group">
                                <label class="col-md-4 control-label">Brand Name</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Brand Name" class="form-control input-md" name="" wire:model="name" wire:keyup="generateslug" />
                                     @error('name')<p class="text-danger">{{$message}}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Brand Slug</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Brand Slug" class="form-control input-md" name="" wire:model="slug">
                                     @error('slug')<p class="text-danger">{{$message}}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


