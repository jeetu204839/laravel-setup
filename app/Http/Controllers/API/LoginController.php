<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Hash;  //for password encrypt
use Auth; 
use App\Models\User;

use Illuminate\Support\Facades\Validator; // for validate form request

class LoginController extends Controller
{
    
    public function authentication(Request $request)
    {
        $validator = Validator::make($request->all(), [
                                    'email' => 'required',
                                    'password' => 'required',
        ],['email.required'=>'The email field is required.']);
     
        if ($validator->passes())
        {
            
           $user = User::where('email',$request->email)->first();
            
            if($user != null)
            {
                if(Hash::check($request->password, $user['password']))
                {
                    $token = $user->createToken('my-app-token')->plainTextToken;
                    
                    $response=[
                               'user'=>$user,
                               'token'=>$token
                              ];
                    
                    return response($response,201);
                }
                else
                {
                    $errors = $validator->errors()->add('password','Incorrect Password !');
                    $response = array("err" => 1,"msg" => $errors );
                     return  response($response);
                }
                
            }
            else
            {
                $errors = $validator->errors()->add('email','Invalid Email Id !');
                $response = array("err" => 1,"msg" => $errors );
                 return  response($response);
            }
          
        }
        else
        { 
            $errors = $validator->errors()->messages();
                $response = array("err" => 1,"msg" => $errors );
           
        }
         return  response($response);
        
    }
    
    public function authentication_old(Request $request)
    {
        $validator = Validator::make($request->all(), [
                                    'email' => 'required',
                                    'password' => 'required',
        ],['email.required'=>'The email field is required.']);
     
        if ($validator->passes())
        {
            
            $row = User::where('email',$request->email)->first();
            if(!empty($row))
            {
                if(Hash::check($request->password, $row['password']))
                {
                    $token = $user->createToken('my-app-token')->plainTextToken;
                    
                    $response=[
                               'user'=>$row,
                               'token'=>$token
                              ];
                    
                    return response($response,201);
                }
                else
                {
                    $errors = $validator->errors()->add('password','Incorrect Password !');
                    $response = array("err" => 1,"msg" => $errors );
                    return json_encode($response);
                }
                
            }
            else
            {
                $errors = $validator->errors()->add('email','Invalid Email Id !');
                $response = array("err" => 1,"msg" => $errors );
                return json_encode($response);
            }
          
        }
        else
        { 
            $errors = $validator->errors()->messages();
                $response = array("err" => 1,"msg" => $errors );
           
        }
         return json_encode($response);
        
    }
    
    public function logout(Request $request)
    {
        
        // Get user who requested the logout
        $user = request()->user(); //or Auth::user()
        // Revoke current user token
        $user->tokens()->where('id', $user->currentAccessToken()->id)->delete();
        
        $response=['err'=>0,'msg'=>'Logout successfully'];
        return response($response);
    }
    
}
