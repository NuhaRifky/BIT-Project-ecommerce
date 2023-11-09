<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Brand;
use Livewire\WithPagination;

class AdminBrandComponent extends Component
{
    use WithPagination;

    public function deleteBrand($id)
    {
        $brand = Brand::find($id);
        $brand->delete();
        session()->flash('message','Brand has been deleted successfully');

    }

    public function render()
    {
        $brands = Brand::paginate(5);
        return view('livewire.admin.admin-brand-component',['brands'=>$brands])->layout('layouts.base');
    }
}
