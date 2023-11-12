<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AnimalController extends Controller
{
    public $animals = [
        ["name" => "panda"],
        ["name" => "nyamuk"],
        ["name" => "ayam"]
    ];

    # method index - menampilkan data animals
    public function index()
    {
        foreach ($this->animals as $animal) {
            echo "Nama Hewan : $animal[name] <br>";
        }
    }

    # method store - menambahkan hewan baru
    public function store(Request $request)
    {
        #validate
        $validateData = $request->validate([
            'nama' => 'required',
            'nim' => 'numeric|required',
            'email' => 'email|required',
            'jurusan' => 'required'
        ]);

        $student = Student::create($validateData);


        $data = [
            'message' => 'Student is created succesfully',
            'data' => $student,
        ];

        // mengembalikan data (json) dan kode 201
        return response()->json($data, 201);
    }

    # method update - mengupdate hewan
    public function update(Request $request, $id)
    {
        $this->animals[$id] = $request;
        $this->index();
    }

    # method destroy - menghapus hewan
    public function destroy($id)
    {
        # gunakan method unset atau array_splice untuk menghapus data array
        unset($this->animals[$id]);
        $this->index();
    }
}