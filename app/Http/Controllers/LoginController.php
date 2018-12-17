<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\DB;


class LoginController extends Controller
{
    public function index(Request $request){

    	return view('login.index')->with('name', $request->name);
    }

    public function verify(Request $request){
    	
    	$name = $request->name;
    	$password = $request->input('password');
     
        $user = DB::table('user')
                ->where('name', $name)
                ->where('password', $password)
                ->first();

		if($user != null){

            $request->session()->put('logged', $user);
            
			return redirect()->route('home.index');
		}else{
			
			$request->session()->flash('message', 'Invalid username or password');
			return redirect()->route('login.index', ['name'=>$name]);
		}
    	
    }
}
