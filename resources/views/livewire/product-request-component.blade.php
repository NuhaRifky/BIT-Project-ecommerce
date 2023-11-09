<div>
    <main id="main" class="main-site left-sidebar">

        <div class="container">

            <div class="wrap-breadcrumb">
                <ul>
                    <li class="item-link"><a href="#" class="link">home</a></li>
                    <li class="item-link"><span>product-request</span></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 col-md-offset-3">                          
                    <div class=" main-content-area">
                        <div class="wrap-login-item ">
                            <div class="register-form form-item ">
                                @if(Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <form class="form-stl"  name="frm-login" wire:submit.prevent="sendMessage">
                                    <fieldset class="wrap-title">
                                        <h3 class="form-title">Request for New Product</h3>
                                        
                                    </fieldset>                                 
                                    <fieldset class="wrap-input">
                                        <label for="frm-reg-email">Email Address</label>
                                        <input type="email" id="frm-reg-email" name="reg-email" wire:model="email">
                                        @error('email')<p class="text-danger">{{$message}}</p>@enderror
                                    </fieldset>
                                    <fieldset class="wrap-input">
                                        <label for="frm-reg-lname">Product Name</label>
                                        <input type="text" id="frm-reg-lname" name="reg-lname" wire:model="product_name">
                                        @error('product_name')<p class="text-danger">{{$message}}</p>@enderror
                                    </fieldset>
                                    <fieldset class="wrap-input">
                                        <label for="frm-reg-lname">Product Type</label>
                                        <input type="text" id="frm-reg-lname" name="reg-lname" wire:model="type">
                                        @error('type')<p class="text-danger">{{$message}}</p>@enderror
                                    </fieldset>
                                    <fieldset class="wrap-input">
                                        <label for="frm-reg-lname">Product Description</label>
                                        <input type="text" id="frm-reg-lname" name="reg-lname" wire:model="description">
                                        @error('description')<p class="text-danger">{{$message}}</p>@enderror
                                    </fieldset>
                                    <fieldset class="wrap-input">
                                        <label for="frm-reg-lname">Product Image</label>
                                        <input type="file" class="input-file" name="" wire:model="image">
                                        @if($image)
                                        <img src="{{$image->temporaryUrl()}}" width="120">
                                        @endif
                                        @error('image')<p class="text-danger">{{$message}}</p>@enderror
                                    </fieldset>
                                    
                                    
                                    <input type="submit" class="btn btn-sign" value="Submit" name="ok">
                                </form>
                            </div>                                          
                        </div>
                    </div><!--end main products area-->     
                </div>
            </div><!--end row-->

        </div><!--end container-->

    </main>
</div>
