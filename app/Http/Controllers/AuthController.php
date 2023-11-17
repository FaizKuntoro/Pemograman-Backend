<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    //Membuat FUngsi register untuk membuat user baru, yang nantinya menggenerasi token
    public function register(Request $request)
    {
        #tangkap input
        $input = [
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ];

        # insert ke tabel user
        $user = User::create($input);

        $data = [
            'message' => 'User is created succesfully',
        ];

        return response()->json($data, 200);
    }

    # Login user setelah melakukan register
    public function login(Request $request)
    {
    
        $input = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        # Menangkap  inputan user
        $user = User::where('email', $input['email'])->first();

        # bandingkan input user dengan data di DB
        $isLoginSuccessfully = ($input['email'] === $user->email &&
            Hash::check($input['password'], $user->password)
        );

        if ($isLoginSuccessfully) {

            # buat token
            $token = $user->createToken('auth_token');

            $data = [
                'message' => 'Login successfully',
                'token' => $token->plainTextToken,
            ];

            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Login failed',
            ];

            return response()->json($data, 401);
        }
    }
}
