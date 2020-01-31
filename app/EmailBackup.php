<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmailBackup extends Model
{
    protected $fillable = [
        'from', 'to', 'trackingID', 'optional',
    ];
}
