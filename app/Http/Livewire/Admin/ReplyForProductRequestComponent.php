<?php

namespace App\Http\Livewire\Admin;
use App\Models\ProductRequest;
use App\Mail\SendReplyMail;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;

class ReplyForProductRequestComponent extends Component
{
    
    public $email;
    public $reply_message;
    public $data;

    

    public function sendMessage()
    {
        $this->validate([
                'reply_message' => 'required'
                
            ]);
        $data = array(
            'reply_message' => $this->reply_message 
        );

        Mail::to('nuharazzak65@gmail.com')->send(new SendReplyMail($data));
        session()->flash('message','Email has been sent successfully!');
    }

    

    public function render()
    {
        return view('livewire.admin.reply-for-product-request-component')->layout('layouts.base');
    }
}
