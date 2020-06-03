<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function index()
    {
        $user = User::all();
        return response(['data' => $user]);
    }

    public function register(Request $request)
    {
        //Validasi data input
        $validator = Validator::make($request->all(), [
            'username' => 'required|unique:users',
            'password' => 'required|max:12',
            'c_password' => 'required|same:password',
            'role' => 'required'
        ]);

        //Jika validasi gagal
        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()], 401);
        }

        //Simpan data user
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);

        $success['token'] = $user->createToken('myApp')->accessToken;
        return response()->json(['success' => true, 'data' => $success]);
    }

    public function login()
    {
        if (Auth::attempt(['username' => request('username'), 'password' => request('password')])) {
            $user = Auth::user();
            $success['token'] = $user->createToken('myApp')->accessToken;
            return response()->json(['success' => true, 'data' => $success]);
        } else {
            return response()->json(['success' => false, 'message' => 'Akun tidak terdaftar!'], 401);
        }
    }

    public function myAccount()
    {
        $user = Auth::user();
        return response()->json(['success' => true, 'data' => $user]);
    }
}
