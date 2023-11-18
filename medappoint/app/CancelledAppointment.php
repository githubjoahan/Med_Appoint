<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CancelledAppointment extends Model
{
   
    public function cancelled_by(){ 
        //cancellation N - 1 user 
        return $this->belongsTo(User::class);
    }
}
