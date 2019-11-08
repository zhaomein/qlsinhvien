<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use JWTAuth;
use JWTAuthException;

class AuthController extends Controller
{
    public function login(Request $request){
        $credentials = $request->only('email', 'password');
        $token = null;
        try {
           if (!$token = JWTAuth::attempt($credentials)) {
            return response()->json([
                'status' => false, 
                'message' => 'invalid_email_or_password'
            ], 422);
           }
        } catch (JWTAuthException $e) {
            return response()->json([
                'status' => false, 
                'message' => 'failed_to_create_token'
            ], 500);
        }
        return response()->json([
            'status' => true,
            'token' => $token
        ]);
    }

    function logout() {
        Auth::guard('api')->logout();
        return response()->json([
            'status' => 'success',
            'message' => 'Logout success!'
        ], 200);
    }
}
