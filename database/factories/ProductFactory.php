<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Discount;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => fake()->name(),
            'description' => fake()->paragraph(),
            'price' => fake()->randomFloat(2, 1, 1000),
            'photo' => fake()->imageUrl($width = 200, $height = 200),
            'view' => fake()->randomDigit(),
            'like' => fake()->randomDigit(),
            'user_id' => User::factory(),
            'discount_id' => Discount::factory(),
            'category_id' => Category::factory(),
            'deleted' => fake()->numberBetween(0, 1),

        ];
    }
}
