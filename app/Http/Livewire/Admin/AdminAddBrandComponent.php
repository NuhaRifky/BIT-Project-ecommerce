<?php


namespace App\Http\Livewire\Admin;
use Illuminate\Support\Str;
use App\Models\Brand;
use Livewire\Component;

class AdminAddBrandComponent extends Component
{
    public $name;
    public $slug;

    public function generateslug()
    {
        $this->slug = Str::slug($this->name);

    }

    public function updated($fields)
        {
            $this->validateOnly($fields,[
                'name' => 'required',
                'slug' => 'required|unique:brands'
            ]);
        }

    public function storeBrand()
        {
            $this->validate([
                'name' => 'required',
                'slug' => 'required|unique:brands'
            ]);

            $brand = new Brand();
            $brand->name = $this->name;
            $brand->slug = $this->slug;
            $brand->save();
            session()->flash('message','Brand has been created succussfully');

        }

    public function render()
    {
        return view('livewire.admin.admin-add-brand-component')->layout('layouts.base');
    }
}
