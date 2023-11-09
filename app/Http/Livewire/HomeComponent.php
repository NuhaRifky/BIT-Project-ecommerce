<?php

namespace App\Http\Livewire;

use Illuminate\Support\Facades\Auth;
use App\Models\Product;
use Livewire\Component;
use Cart;

class HomeComponent extends Component
{
    public function render()
    {
        if(Auth::check())
        {
            Cart::instance('cart')->restore(Auth::user()->email);
            Cart::instance('wishlist')->restore(Auth::user()->email);
        }

        $lproducts = Product::orderBy('created_at','DESC')->get()->take(8);
        $sproducts = Product::where('sale_price','>',0)->inRandomOrder()->get()->take(8);
        return view('livewire.home-component',['lproducts'=>$lproducts,'sproducts'=>$sproducts])->layout('layouts.base');
    }
}
