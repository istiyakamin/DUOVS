<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Election
 * @package App\Models
 * @version March 25, 2018, 2:24 pm UTC
 *
 * @property string name
 * @property string description
 * @property integer election_category_id
 * @property string|\Carbon\Carbon start
 * @property string|\Carbon\Carbon end
 * @property boolean is_active
 */
class Election extends Model
{
    use SoftDeletes;

    public $table = 'elections';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'description',
        'election_category_id',
        'start',
        'end',
        'is_active'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'description' => 'string',
        'election_category_id' => 'integer',
        'is_active' => 'boolean'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    public function election_category()
    {
        return $this->belongsTo('App\Models\ElectionCategory');
    }

    
}
