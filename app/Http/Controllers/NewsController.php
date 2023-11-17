<?php

// Menggunakan Model News

namespace App\Http\News;
namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

// menambahkan class pada controller
class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    // Fungsi Index untuk menampilkan semua data
    public function index()
    {
        // Get All News
        $news = News::all();

        $data = [
            'message' => 'Get All News',
            'data' => $news
        ];

        // kirim data json dengan kode 200
        return response()->json($data, 200);
    }

    //fungsi kategori, untuk menampilak data bedasarkan kategori
    public function category($category)
    {   
        //Mem filter data bedasarkan Kategori, sehingga data yang ditampilkan hanyak memiliki kategori yang dipilih
        $news = News::where('category', $category)->get();
        //jika kategori tidak ditemukan, maka server akan memberikan response
        if ($news->isEmpty()) {
            return response()->json(['message' => 'tidak ada berita yang ditemukan di kategori ini'], 404);}
            return response()->json($news);
    }

    //fungsi kategori, untuk menampilak data bedasarkan judul
    public function judul($judul)
    {
        //mencari data bedasarkan judul, 
        $news = News::where('judul', $judul)->get();

        //memberikan respon jika news tidak ditemukan
        if ($news->isEmpty()) {
            return response()->json(['message' => 'No news found for the given category'], 404);
        }

        return response()->json($news);
    }

    // Menginisiasi data baru
    public function store(Request $request)
    {
        //untuk mengvalidasi file yang di input, sehingga data yang diinput memenuhi validasi dibawah
        $validateData = $request->validate([
            'judul' => 'required',
            'penulis' => 'required',
            'deskripsi' => 'required',
            'konten' => 'required',
            'url' => 'required',
            'url_image' => 'required',
            'published_at' => 'required',
            'category' => 'required'
            
            
        ]);

        //jika data tervalidasi maka server akan menerima data baru
        $news = News::create($validateData);

        //memberikan respon
        $data = [
            'message' => 'News is created succesfully',
            'data' => $news,
        ];

        
        return response()->json($data, 201);
    }

 
    public function show(string $id)
    {
        $news = News::find($id);

        if (!$news) {
            return response()->json(['message' => 'News tidak ditemukan'], 404);
        }

        return response()->json($news);
    }

    

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // cari id News dan filter
        $news = News::findOrFail($id);

        // logic update
        if ($news) {
            $input = [
                'judul' => $request->judul ?? $news->judul,
                'penulis' => $request->penulis ?? $news->penulis,
                'deskripsi' => $request->deskripsi ?? $news->deskripsi,
                'konten' => $request->konten ?? $news->konten,
                'url' => $request->url ?? $news->url,
                'url_image' => $request->url_image ?? $news->url_image,
                'published_at' => $request->published_at ?? $news->published_at,
                'category' => $request->category ?? $news->category
            ];

            $news->update($input);

            $data = [
                'message' => 'News is updated succesfully',
                'data' => $news,
            ];

            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'News not found',
            ];

            return response()->json($data, 404);
        }
    }

   //men delete data bedasarkan id yang dipilih
    public function destroy(string $id)
    {
        // delete data
        $news = News::findOrFail($id);
        if ($news) {
            $news->delete();

            $data = [
                "message" => "News is deleted",
            ];

            return response()->json($data, 200);
        } else {
            $data = [
                "message" => "News not found",
            ];

            return response()->json($data, 404);
        }
    }
}
