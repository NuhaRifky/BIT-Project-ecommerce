<?php

namespace App\Http\Livewire\User;

use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class UserEditProfileComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $email;
    public $mobile;
    public $image;
    public $line1;
    public $line2;
    public $city;
    public $province;
    public $country;
    public $zipcode;
    public $newimage;

    public function mount()
    {
            $user = User::find(Auth::user()->id);
            $this->name = $user->name;
            $this->email  = $user->email;
            $this->mobile  = $user->profile->mobile;
            $this->image  = $user->profile->image;
            $this->line1  = $user->profile->line1;
            $this->line2  = $user->profile->line2;
            $this->city  = $user->profile->city;
            $this->province  = $user->profile->province;
            $this->country  = $user->profile->country;
            $this->zipcode  = $user->profile->zipcode;
            $this->newimage  = $user->profile->newimage;
    }

     public function updates($fields)
    {
        $this->validate($fields,[
            
            'mobile' => 'required|numeric|digits:10',
            'line1' => 'required',
            'city' => 'required',
            'province' => 'required',
            'country' => 'required',
            'zipcode' => 'required|numeric'
                 
            ]);
        if($this->newimage)
        {
            $this->validateOnly($fields,[
                'newimage'=> 'required|mimes:jpeg,png'
            ]);
        }

    }

    public function updateProfile()
    {
        $this->validate([
            
            'mobile' => 'required|numeric|digits:10',
            'line1' => 'required',
            'city' => 'required',
            'province' => 'required',
            'country' => 'required',
            'zipcode' => 'required|numeric'
           
        ]);

         if($this->newimage)
        {
            $this->validate([
                'newimage'=> 'required|mimes:jpeg,png'
            ]);
        }

         $user = User::find(Auth::user()->id);
         $user->name = $this->name;
         $user->save();

         $user->profile->mobile = $this->mobile;
         if($this->newimage)
         {
            if($this->image)
            {
                unlink('assets/images/profile/'.$this->image);
            }
            $imageName = Carbon::now()->timestamp .'.'. $this->newimage->extension();
            $this->newimage->storeAs('profile',$imageName);
            $user->profile->image = $imageName;

         }
         $user->profile->line1 = $this->line1;
         $user->profile->line2 = $this->line2;
         $user->profile->city = $this->city;
         $user->profile->province = $this->province;
         $user->profile->country = $this->country;
         $user->profile->zipcode = $this->zipcode;
         $user->profile->save();
         session()->flash('message','Profile has been updated successfully!');
    }

    public function render()
    {
        return view('livewire.user.user-edit-profile-component')->layout('layouts.base');
    }
}
