<?php

namespace App\Repositories;

use App\Models\ElectionNews;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class ElectionNewsRepository
 * @package App\Repositories
 * @version March 26, 2018, 5:50 pm UTC
 *
 * @method ElectionNews findWithoutFail($id, $columns = ['*'])
 * @method ElectionNews find($id, $columns = ['*'])
 * @method ElectionNews first($columns = ['*'])
*/
class ElectionNewsRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'title',
        'description'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return ElectionNews::class;
    }
}
