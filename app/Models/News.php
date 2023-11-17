<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class News extends Model
{
    use HasFactory;

    # Meng-inisiasi properti dalam Model News
    protected $fillable = ['judul', 'penulis', 'deskripsi', 'konten', 'url', 'url_image', 'published_at', 'category'];
}
