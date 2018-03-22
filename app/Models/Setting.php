<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Setting
 * @package App\Models
 * @version March 22, 2018, 8:21 pm UTC
 *
 * @property string|\Carbon\Carbon nomaination_start_date
 * @property string|\Carbon\Carbon nomaination_end_date
 * @property string|\Carbon\Carbon voting_start_date
 * @property string|\Carbon\Carbon voting_end_date
 */
class Setting extends Model
{
    use SoftDeletes;

    public $table = 'settings';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'nomaination_start_date',
        'nomaination_end_date',
        'voting_start_date',
        'voting_end_date'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    
}
