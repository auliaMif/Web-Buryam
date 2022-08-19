<?php

namespace App\Http\Controllers\API\Auth;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    // api function register
    public function register(Request $request)
    {
        $validateData = $request->validate([
            'name' => 'required | max:50',
            'email' => 'email | required | unique:users',
            'password' => 'required | confirmed',
        ]);

        // operation create
        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        // melakukan save terhadap user yang telah dibuat
        $user->save();
        return response()->json($user, 201);
    }

    // api function login user
    public function login(Request $request)
    {
        $validateData = $request->validate([
            'email' => 'email | required',
            'password' => 'required'
        ]);

        // menampilkan login detail pada log api postman
        $login_detail = $request->only(['email', 'password']);

        // pengecekan ketika user mengetikkan email dan password tidak sesuai
        if (!Auth::attempt($login_detail)) {
            return response()->json([
                'error' => 'login user failed, please check your email or password',
            ], 401);
        }

        // jika sudah sesuai maka, akan menjalan kode untuk login dibawah
        $user = $request->user();

        // // membuat token
        $tokenResult = $user->createToken('accessToken');
        $token = $tokenResult -> token;
        $token->save();

        // mengembalikan log pesan berhasil login ke dalam log sistem postman
        return response()->json([
            'access_token' => $tokenResult->accessToken,
            'token_id' => $token->id,
            'user_id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
        ], 200);
    }
}