<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Nomination
 * @package App\Models
 * @version March 22, 2018, 8:20 pm UTC
 *
 * @property string name
 * @property string gender
 * @property string bio
 * @property string reason_for_nomination
 * @property integer no_of_nomination
 * @property boolean is_admin_selected
 * @property boolean is_win
 * @property integer user_id
 * @property integer category_id
 */
class Nomination extends Model
{
    use SoftDeletes;

    public $table = 'nominations';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'gender',
        'bio',
        'reason_for_nomination',
        'no_of_nomination',
        'is_admin_selected',
        'is_win',
        'user_id',
        'category_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'gender' => 'string',
        'bio' => 'string',
        'reason_for_nomination' => 'string',
        'no_of_nomination' => 'integer',
        'is_admin_selected' => 'boolean',
        'is_win' => 'boolean',
        'user_id' => 'integer',
        'category_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    
}
