<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Hash;  //for password encrypt
use Illuminate\Support\Facades\Validator; // for validate form request
use App\Models\User;
class UserController extends Controller
{
    public function save(Request $request)
    {
        $validator = Validator::make($request->all(), [
                                    'name' => 'required',
                                    'email' => 'required|unique:users',
                                    'password' => 'required',
        ],['name.required'=>'The email field is required.']);
     
        if ($validator->passes())
        {
          
            $obj=new User();
            $obj->name     = $request->name;
            $obj->email    = $request->email;
            $obj->password = Hash::make($request->password);
            $obj->save();
            
            $response=['err'=>0,'msg'=>'User Successfully Saved !'];
            return response($response);
          
        }
        else
        { 
            $errors = $validator->errors()->messages();
                $response = array("err" => 1,"msg" => $errors );
           
        }
         return  response($response);
        
    }
    
    public function getAllUsers(Request $request)
    {
        $user=User::all();
        return response($user);
    }
    
    public function getUserById($id)
    {
        $user = User::find($id);
        if($user != null)
        {
            $response=['err'=>0,'user'=>$user];
        }
        else
        {
            $response=['err'=>1,'msg'=>'User Not Found !'];
        }
        return response($response);
    }
    
    public function update(Request $request)
    {
        $id=$request->id;
         $validator = Validator::make($request->all(), [
                                    'id' => 'required',
                                    'name' => 'required',
                                    'email' => "required|unique:users,email,$request->id",
                                    'password' => 'required',
        ],['id.required'=>'User id required','name.required'=>'The email field is required.']);
     
        if ($validator->passes())
        {
          
            $obj=User::find($request->id);
            $obj->name     = $request->name;
            $obj->email    = $request->email;
            $obj->password = Hash::make($request->password);
            $obj->save();
            
            $response=['err'=>0,'msg'=>'User Successfully Updated !'];
            return response($response);
          
        }
        else
        { 
            $errors = $validator->errors()->messages();
                $response = array("err" => 1,"msg" => $errors );
           
        }
         return  response($response);
    }
    
    public function delete($id='')
    {
        $id = $id;
        $obj=User::find($id);
        if($obj != null)
        {
            $obj->delete();
            $response=['err'=>0,'msg'=>'Record deleted !'];
        }
        else
        {
            $response=['err'=>1,'msg'=>'Oops record not found'];
        }
        return response($response);
    }
    
}
