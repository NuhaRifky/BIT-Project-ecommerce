<?php

namespace App\Http\Livewire\Admin;

use App\Models\Brand;
use Livewire\Component;
use Illuminate\Support\Str;

class AdminEditBrandComponent extends Component
{
    public $brand_slug;
    public $brand_id;
    public $name;
    public $slug;

    public function mount($brand_slug)
    {
        $this->brand_slug = $brand_slug;
        $brand = Brand::where('slug',$brand_slug)->first();
        $this->brand_id = $brand->id;
        $this->name = $brand->name;
        $this->slug = $brand->slug;
    }

    public function generateslug(){
        $this->slug = Str::slug($this->name);
    }

    public function updated($fields)
        {
            $this->validateOnly($fields,[
                'name' => 'required',
                'slug' => 'required|unique:brands'
            ]);
        }


    public function updateBrand()
    {
        $this->validate([
                'name' => 'required',
                'slug' => 'required|unique:brands'
            ]);

        $brand = Brand::find($this->brand_id);
        $brand->name = $this->name;
        $brand->slug = $this->slug;
        $brand->save();
        session()->flash('message','Brand has been updated succussfully');

    }

    public function render()
    {
        return view('livewire.admin.admin-edit-brand-component')->layout('layouts.base');
    }
}
