<?php

namespace App\Repositories;

use App\Models\Election;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class ElectionRepository
 * @package App\Repositories
 * @version March 25, 2018, 2:24 pm UTC
 *
 * @method Election findWithoutFail($id, $columns = ['*'])
 * @method Election find($id, $columns = ['*'])
 * @method Election first($columns = ['*'])
*/
class ElectionRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'description',
        'election_category_id',
        'start',
        'end',
        'is_active'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Election::class;
    }
}
