<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block !important;
        }
    </style>
    <div class="container" style="padding: 30px 0;" >
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Requested Product
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Email</th>
                                    <th>Product Name</th>
                                    <th>Product Type</th>
                                    <th>Product Description</th>
                                    <th>Image</th>
                                    <th>Created At</th>
                                    <th>Action</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $i = 1;
                                @endphp
                                @foreach($p_requests as $p_request)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$p_request->email}}</td>
                                    <td>{{$p_request->product_name}}</td>
                                    <td>{{$p_request->type}}</td>
                                    <td>{{$p_request->description}}</td>
                                    <td><img src="{{asset('assets/images/product_requests')}}/{{$p_request->image}}" width="60"></td>
                                    <td>{{$p_request->created_at}}</td>
                                    <td>
                                        <a href="{{route('admin.sendreplymessage')}}"><i class="fa fa-reply fa-2x"></i></a>
                                        
                                    </td>
                                    
                                </tr>

                                @endforeach
                            </tbody>
                        </table>
                        {{$p_requests->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

