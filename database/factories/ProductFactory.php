<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker-> sentence(3),
            'description' => $this->faker->paragraph(1),
            'price' => $this->faker->randomFloat($maxDecimals = 0, $min = 2000, $max = 10000),
            'stock' => $this->faker->numberBetween(1,100),
            'status' => $this->faker->randomElement(['available','unavailable']),
        ];
    }
}
