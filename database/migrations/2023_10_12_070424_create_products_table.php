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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('description');
            $table->double('price', 8, 2);
            $table->string('photo');
            $table->integer('view');
            $table->integer('like');
            $table->foreignId('user_id')->constrained('users');
            $table->foreignId('discount_id')->constrained('discounts');
            $table->foreignId('category_id')->constrained('categories');
            $table->boolean('deleted');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
