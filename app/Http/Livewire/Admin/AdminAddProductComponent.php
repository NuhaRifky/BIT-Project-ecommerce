<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Brand;
use Livewire\Component;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;
use App\Models\Product;

class AdminAddProductComponent extends Component
{
        use WithFileUploads;
        public $name;
        public $slug;
        public $short_description;
        public $description;
        public $reguler_price;
        public $sale_price;
        public $SKU;
        public $stock_status;
        public $featured;
        public $quantity;
        public $image;
        public $category_id;
        public $brand_id;
        public $images;
    
    public function mount()
    {
        $this->stock_status = 'instock';
        $this->featured = 0;
    }

    public function generateSlug()
        {
            $this->slug = Str::slug($this->name,'-');

        }

    public function updated($fields)
    {
         $this->validateOnly($fields,[
                'name' => 'required',
                'slug' => 'required|unique:products',
                'short_description'=> 'required',
                'description'=> 'required',
                'reguler_price'=> 'required|numeric',
                'sale_price'=> 'numeric',
                'SKU'=> 'required',
                'stock_status'=> 'required',
                'quantity'=> 'required|numeric',
                'image'=> 'required|mimes:jpeg,png',
                'category_id' => 'required',
                'brand_id' => 'required'
                 
            ]);

    }

    public function addProduct()
        {
            $this->validate([
                'name' => 'required',
                'slug' => 'required|unique:products',
                'short_description'=> 'required',
                'description'=> 'required',
                'reguler_price'=> 'required|numeric',
                'sale_price'=> 'numeric',
                'SKU'=> 'required',
                'stock_status'=> 'required',
                'quantity'=> 'required|numeric',
                'image'=> 'required|mimes:jpeg,png',
                'category_id' => 'required',
                'brand_id' => 'required'
                 
            ]);

            $product = new Product();
            $product->name = $this->name;
            $product->slug = $this->slug;
            $product->short_description = $this->short_description;
            $product->description = $this->description;
            $product->reguler_price = $this->reguler_price;
            $product->sale_price = $this->sale_price;
            $product->SKU = $this->SKU;
            $product->stock_status = $this->stock_status;
            $product->featured = $this->featured;
            $product->quantity = $this->quantity;

            $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
            $this->image->storeAs('products',$imageName);
            $product->image = $imageName;

            if($this->images)
            {
                $imagesname = '';
                foreach($this->images as $key=>$image)
                {
                    $imgName = Carbon::now()->timestamp. $key. '.' . $image->extension();
                    $image->storeAs('products',$imgName);
                    $imagesname = $imagesname.','.$imgName;
                }
                $product->images = $imagesname;
            }

            $product->category_id = $this->category_id;
            $product->brand_id = $this->brand_id;
            $product->save();
            session()->flash('message','Product has been created successfully!');

        }

    public function render()
    {
        $brands = Brand::all();
         $categories = Category::all();
        return view('livewire.admin.admin-add-product-component',['categories'=>$categories,'brands'=>$brands])->layout('layouts.base');
    }
}
