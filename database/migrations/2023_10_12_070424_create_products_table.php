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
            $table->string('code');
            $table->text('description');
            $table->bigInteger('price');
            $table->string('photo')->nullable();
            $table->integer('view')->default(0);
            $table->integer('like')->default(0);
            $table->integer('comment')->default(0);
            $table->foreignId('user_id')->constrained('users');
            $table->bigInteger('discount_id')->nullable();
            $table->foreignId('category_id')->constrained('categories');
            $table->boolean('deleted')->default(0);
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
