<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SendReplyMessageController extends Controller
{
    function index()
    {
        return view('send_reply_message')->with('layouts.base');
    }
}
