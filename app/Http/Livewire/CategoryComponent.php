<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
use App\Models\Category;
use App\Models\Brand;
use Illuminate\Support\Facades\Auth;

class CategoryComponent extends Component
{   
    public $sorting;
    public $pagesize;
    public $category_slug;

    public $min_price;
    public $max_price;

    public function mount($category_slug)
    {
        $this->sorting = "default";
        $this->pagesize = 12;
        $this->$category_slug = $category_slug;

        $this->min_price = 1;
        $this->max_price = 500000;
    }
    public function store($product_id,$product_name,$product_price)
    {
        Cart::add($product_id,$product_name,1,$product_price)->associate('App\Models\Product');
        session()->flash('success message','Item added in Cart');
        return redirect()->route('product.cart');

    }

    public function addToWishlist($product_id,$product_name,$product_price)
    {
        Cart::instance('wishlist')->add($product_id,$product_name,1,$product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component','refreshComponent');

    }

    public function removeFromWishlist($product_id)
    {
        foreach(Cart::instance('wishlist')->content() as $witem)
        {
            if($witem->id == $product_id)
            {
                Cart::instance('wishlist')->remove($witem->rowId);
                 $this->emitTo('wishlist-count-component','refreshComponent');
                 return;
            }
        }

    }

    use WithPagination;
    public function render()
    {
        $category = Category::where('slug',$this->category_slug)->first();
        $category_id = $category->id;
        $category_name = $category->name;

        if($this->sorting =='date')
        {
            $products = Product::whereBetween('reguler_price',[$this->min_price,$this->max_price])->where('category_id',$category_id)->orderBy('created_at','DESC')->paginate($this->pagesize);
        }
        else if($this->sorting =="price")
        {
             $products = Product::whereBetween('reguler_price',[$this->min_price,$this->max_price])->where('category_id',$category_id)->orderBy('reguler_price','ASC')->paginate($this->pagesize);
        }
         else if($this->sorting =="price-desc")
        {
             $products = Product::whereBetween('reguler_price',[$this->min_price,$this->max_price])->where('category_id',$category_id)->orderBy('reguler_price','DESC')->paginate($this->pagesize);
        }
         else
        {
             $products = Product::whereBetween('reguler_price',[$this->min_price,$this->max_price])->where('category_id',$category_id)->paginate($this->pagesize);
        }

        $brands = Brand::all();
        $categories = Category::all();

        if(Auth::check())
        {
            Cart::instance('cart')->store(Auth::user()->email);
            Cart::instance('wishlist')->store(Auth::user()->email);
        }

        $lproducts = Product::orderBy('created_at','DESC')->get()->take(5);
        
        return view('livewire.category-component',['products'=>$products,'categories'=>$categories,'brands'=>$brands,'category_name'=>$category_name,'lproducts'=>$lproducts])->layout('layouts.base');
    
    }
}
