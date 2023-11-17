<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('news', function (Blueprint $table) {
            $table->id();
            // membuat kolom sql yang nantinya akan dipindah ke file SQL di php my admin
            $table->string('judul');
            $table->string('penulis');
            $table->string('deskripsi');
            $table->text('konten');
            $table->string('url');
            $table->string('url_image');
            $table->datetime('published_at');
            $table->string('category');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('news');
    }
};
