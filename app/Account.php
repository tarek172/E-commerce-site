<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    // protected $table = 'user_table';
    protected $primaryKey = 'accId';
    public $timestamps = false;
}
