<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Slider extends Model
{
    use HasFactory;
    protected $table = "slider";
    protected $primaryKey = "id";

    public function Pro()
    {
        return $this->hasMany(Property::class, 'slider', 'id')->latest();
            // ->limit(6)
            // ->get();
    }
}