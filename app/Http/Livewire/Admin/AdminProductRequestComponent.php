<?php

namespace App\Http\Livewire\Admin;

use App\Models\ProductRequest;
use Livewire\Component;

class AdminProductRequestComponent extends Component
{
    public function render()
    {
        $p_requests = ProductRequest::paginate(12);
        return view('livewire.admin.admin-product-request-component',['p_requests'=>$p_requests])->layout('layouts.base');
       
    }
}
