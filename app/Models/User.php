<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class User
 * @package App\Models
 * @version March 22, 2018, 8:21 pm UTC
 *
 * @property string name
 * @property string email
 * @property string department
 * @property string faculty
 * @property integer phone
 * @property integer role_id
 * @property string verify_token
 * @property boolean status
 * @property string password
 * @property string remember_token
 */
class User extends Model
{
    use SoftDeletes;

    public $table = 'users';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'email',
        'department',
        'faculty',
        'phone',
        'role_id',
        'verify_token',
        'status',
        'password',
        'remember_token'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'email' => 'string',
        'department' => 'string',
        'faculty' => 'string',
        'phone' => 'integer',
        'role_id' => 'integer',
        'verify_token' => 'string',
        'status' => 'boolean',
        'password' => 'string',
        'remember_token' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    public function role()
    {
        return $this->belongsTo('App\Models\Role');
    }

    
}
