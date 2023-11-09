<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Send Reply for Requested Product
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.productrequest')}}" class="btn btn-success pull-right">All Requested Product</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form class="form-horizontal" wire:submit.prevent="sendMessage">
                            
                            
                            <div class="form-group">
                                <label class="col-md-4 control-label">Reply Message</label>
                                <div class="col-md-4">
                                    <textarea placeholder="Reply Message" class="form-control input-md" id="reply_message" name="" wire:model="data"></textarea>
                                   @error('reply_message')<p class="text-danger">{{$message}}</p>@enderror
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Send</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@push('scripts')
<script>
    $(function(){
        tinymce.init({
            selector:'#reply_message',
            setup:function(editor){
                editor.on('Change',function(e){
                    tinyMCE.triggerSave();
                    var sd_data = $('#reply_message').val();
                    @this.set('reply_message',sd_data);
                });
                }
       });

        

       });
    
</script>

@endpush

