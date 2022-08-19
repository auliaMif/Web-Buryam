<?php

namespace App\Http\Controllers\API\Kategori;

use App\Http\Controllers\Controller;
use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KategoriController extends Controller
{
    public function getAll(){
        $data = DB::table('kategori')
            -> orderBy('id','desc')
            -> get();

        return response()->json($data, 200);    
    }

    public function store(Request $request){
        $validateData = $request->validate([
            'id' => 'required',
            'kode_kategori' => 'required',
            'nama_kategori' => 'required',
            'slug_kategori' => 'required',
            'deskripsi_kategori' => 'required',
        ]);  
        
        $data = new Kategori;
        $data -> id = $request-> id;
        $data -> kode_kategori = $request-> kode_kategori;
        $data -> nama_kategori = $request-> nama_kategori;
        $data -> slug_kategori = $request-> slug_kategori;
        $data -> deskripsi_kategori = $request-> deskripsi_kategori;
        $data->save();
        
        return response()->json($data, 201);
    }

    public function update(Request $request){
        $validateData = $request->validate([
            'id' => 'required',
            'kode_kategori' => 'required',
            'nama_kategori' => 'required',
            'slug_kategori' => 'required',
            'deskripsi_kategori' => 'required',
        ]);  
        
        $data = Kategori::where('id','=', $request -> id) -> first();
        $data -> id = $request-> id;
        $data -> kode_kategori = $request-> kode_kategori;
        $data -> nama_kategori = $request-> nama_kategori;
        $data -> slug_kategori = $request-> slug_kategori;
        $data -> deskripsi_kategori = $request-> deskripsi_kategori;
        $data->save();
        
        return response()->json($data, 201);
    }

    public function destroy(Request $request){
        $data = Kategori::where('id','=', $request -> id) -> first();

        if(!empty($data)){
            $data->delete();

            return response()->json($data, 200);
        }
        else {
            return response()->json([
                'error' => 'data tidak ditemukan'
            ], 404);
        }
    }
}