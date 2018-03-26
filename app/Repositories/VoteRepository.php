<?php

namespace App\Repositories;

use App\Models\Vote;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class VoteRepository
 * @package App\Repositories
 * @version March 25, 2018, 2:40 pm UTC
 *
 * @method Vote findWithoutFail($id, $columns = ['*'])
 * @method Vote find($id, $columns = ['*'])
 * @method Vote first($columns = ['*'])
*/
class VoteRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'election_id',
        'candidate_id',
        'user_id'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Vote::class;
    }
}
