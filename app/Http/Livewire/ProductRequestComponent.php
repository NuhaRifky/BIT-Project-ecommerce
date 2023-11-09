<?php

namespace App\Http\Livewire;

use App\Models\ProductRequest;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;
use Livewire\Component;

class ProductRequestComponent extends Component
{
    use WithFileUploads;
    public $product_name;
    public $email;
    public $type;
    public $description;
    public $image;

     public function updated($fields)
    {
        $this->validateOnly($fields,[
            'product_name' => 'required',
            'email' => 'required|email',
            'type' => 'required',
            'description' => 'required',
            'image' => 'required|mimes:jpeg,png'
        ]);

    }

    public function sendMessage()
    {
        $this->validate([
            'product_name' => 'required',
            'email' => 'required|email',
            'type' => 'required',
            'description' => 'required',
            'image' => 'required|mimes:jpeg,png'
        ]);

        $p_request = new ProductRequest();
        $p_request->product_name = $this->product_name;
        $p_request->email = $this->email;
        $p_request->type = $this->type;
        $p_request->description = $this->description;
        
        $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
            $this->image->storeAs('product_requests',$imageName);
            $p_request->image = $imageName;

        $p_request->save();
        session()->flash('message','Thanks, Your request has been sent successfully!, You will get the information of the availability of product soon!');


    }

    public function render()
    {
        return view('livewire.product-request-component')->layout('layouts.base');
    }
}
