<?php

namespace App;

use Spatie\Permission\Traits\HasRoles;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use Notifiable, HasRoles;
    
    protected $table = 'staff';

    protected $fillable = [
        'name', 'email',
    ];
}
