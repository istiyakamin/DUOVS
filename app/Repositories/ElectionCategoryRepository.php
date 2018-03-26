<?php

namespace App\Repositories;

use App\Models\ElectionCategory;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class ElectionCategoryRepository
 * @package App\Repositories
 * @version March 25, 2018, 2:03 pm UTC
 *
 * @method ElectionCategory findWithoutFail($id, $columns = ['*'])
 * @method ElectionCategory find($id, $columns = ['*'])
 * @method ElectionCategory first($columns = ['*'])
*/
class ElectionCategoryRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return ElectionCategory::class;
    }
}
