<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Vote
 * @package App\Models
 * @version March 25, 2018, 2:40 pm UTC
 *
 * @property integer election_id
 * @property integer candidate_id
 * @property integer user_id
 */
class Vote extends Model
{
    use SoftDeletes;

    public $table = 'votes';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'election_id',
        'candidate_id',
        'user_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'election_id' => 'integer',
        'candidate_id' => 'integer',
        'user_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    
}
