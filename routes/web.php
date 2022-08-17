<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Resources\UserResource;
use App\Http\Resources\UserCollection;
use App\Models\User;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'App\Http\Controllers\HomepageController@index');
Route::get('/kontak', 'App\Http\Controllers\HomepageController@kontak');
Route::get('/kategori', 'App\Http\Controllers\HomepageController@kategori');
Route::get('/kategori/{slug}', 'App\Http\Controllers\HomepageController@kategoribyslug');
Route::get('/kategori/{slug}', 'App\Http\Controllers\HomepageController@kategoribyslug');
Route::get('/produk', 'App\Http\Controllers\HomepageController@produk');
Route::get('/produk/{id}', 'App\Http\Controllers\HomepageController@produkdetail');
Route::get('/produk/{slug}', 'App\Http\Controllers\HomepageController@produkdetail');
Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function() {
    Route::get('/', 'App\Http\Controllers\DashboardController@index');
    // route kategori
    Route::resource('kategori', 'App\Http\Controllers\KategoriController');
    // route produk
    Route::resource('produk', 'App\Http\Controllers\ProdukController');
    // route customer
    Route::resource('customer', 'App\Http\Controllers\CustomerController');
    // route transaksi
    Route::resource('transaksi', 'App\Http\Controllers\TransaksiController');
    // profil
    Route::get('profil', 'App\Http\Controllers\UserController@index');
    // setting profil
    Route::get('setting', 'App\Http\Controllers\UserController@setting');
    // // form laporan
    // Route::get('laporan', 'App\Http\Controllers\LaporanController@index');
    // // proses laporan
    // Route::get('proseslaporan', 'App\Http\Controllers\LaporanController@proses');
    // image
    Route::get('image', 'App\Http\Controllers\ImageController@index');
    // simpan image
    Route::post('image', 'App\Http\Controllers\ImageController@store');
    // hapus image by id
    Route::delete('image/{id}', 'App\Http\Controllers\ImageController@destroy');
    // // upload image kategori
    Route::post('imagekategori', 'App\Http\Controllers\KategoriController@uploadimage');
    // // hapus image kategori
    Route::delete('imagekategori/{id}', 'App\Http\Controllers\KategoriController@deleteimage');
    // upload image produk
    Route::post('produkimage', 'App\Http\Controllers\ProdukController@uploadimage');
    // // hapus image produk
    Route::delete('produkimage/{id}', 'App\Http\Controllers\ProdukController@deleteimage');
    // slideshow
    Route::resource('slideshow', 'App\Http\Controllers\SlideshowController');
    // produk promo
    Route::resource('promo', 'App\Http\Controllers\ProdukPromoController');
    // // load async produk
    Route::get('loadprodukasync/{id}', 'App\Http\Controllers\ProdukController@loadasync');
    // wishlist
  Route::resource('wishlist', 'App\Http\Controllers\WishlistController');
});

// shopping cart
Route::group(['middleware' => 'auth'], function() {
  // cart
  Route::resource('cart', 'App\Http\Controllers\CartController');
  Route::patch('kosongkan/{id}', 'App\Http\Controllers\CartController@kosongkan');
  // cart detail
  Route::resource('cartdetail', 'App\Http\Controllers\CartDetailController');
  // alamat pengiriman
  Route::resource('alamatpengiriman', 'App\Http\Controllers\AlamatPengirimanController');
  // checkout
  Route::get('checkout', 'App\Http\Controllers\CartController@checkout');
});


  Auth::routes();

  // Route::get('/home', 'App\Http\Controllers\HomeController@index')->name('home');
  Route::get('/home', function() {
    return redirect('/admin');
  });

  // ceritanya API
  Route::get('/user/{id}', function ($id) {
    return new UserResource(User::findOrFail($id));
});

Route::get('/users', function () {
  return new UserCollection(User::all());
  return UserResource::collection(User::all()->keyBy->id);
});