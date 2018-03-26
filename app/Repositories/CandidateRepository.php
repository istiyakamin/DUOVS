<?php

namespace App\Repositories;

use App\Models\Candidate;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class CandidateRepository
 * @package App\Repositories
 * @version March 25, 2018, 2:36 pm UTC
 *
 * @method Candidate findWithoutFail($id, $columns = ['*'])
 * @method Candidate find($id, $columns = ['*'])
 * @method Candidate first($columns = ['*'])
*/
class CandidateRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'election_id',
        'user_id'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Candidate::class;
    }
}
