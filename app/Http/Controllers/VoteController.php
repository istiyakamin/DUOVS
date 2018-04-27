<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateVoteRequest;
use App\Http\Requests\UpdateVoteRequest;
use App\Repositories\VoteRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class VoteController extends AppBaseController
{
    /** @var  VoteRepository */
    private $voteRepository;

    public function __construct(VoteRepository $voteRepo)
    {
        $this->voteRepository = $voteRepo;
    }

    /**
     * Display a listing of the Vote.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->voteRepository->pushCriteria(new RequestCriteria($request));
        $votes = $this->voteRepository->all();

        return view('votes.index')
            ->with('votes', $votes);
    }

    /**
     * Show the form for creating a new Vote.
     *
     * @return Response
     */
    public function create()
    {
        return view('votes.create');
    }

    /**
     * Store a newly created Vote in storage.
     *
     * @param CreateVoteRequest $request
     *
     * @return Response
     */
    public function store(CreateVoteRequest $request)
    {
        $this->validate($request, [
            'user_id' => 'required',
            'election_id' => 'required',
            'candidate_id' => 'required',
        ]);
        
        $input = $request->all();
        
        $vote = $this->voteRepository->create($input);

        Flash::success('Vote saved successfully.');

        return redirect('electionMessage');
    }

    /**
     * Display the specified Vote.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $vote = $this->voteRepository->findWithoutFail($id);

        if (empty($vote)) {
            Flash::error('Vote not found');

            return redirect(route('votes.index'));
        }

        return view('votes.show')->with('vote', $vote);
    }

    /**
     * Show the form for editing the specified Vote.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $vote = $this->voteRepository->findWithoutFail($id);

        if (empty($vote)) {
            Flash::error('Vote not found');

            return redirect(route('votes.index'));
        }

        return view('votes.edit')->with('vote', $vote);
    }

    /**
     * Update the specified Vote in storage.
     *
     * @param  int              $id
     * @param UpdateVoteRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateVoteRequest $request)
    {
        $vote = $this->voteRepository->findWithoutFail($id);

        if (empty($vote)) {
            Flash::error('Vote not found');

            return redirect(route('votes.index'));
        }

        $vote = $this->voteRepository->update($request->all(), $id);

        Flash::success('Vote updated successfully.');

        return redirect(route('votes.index'));
    }

    /**
     * Remove the specified Vote from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $vote = $this->voteRepository->findWithoutFail($id);

        if (empty($vote)) {
            Flash::error('Vote not found');

            return redirect(route('votes.index'));
        }

        $this->voteRepository->delete($id);

        Flash::success('Vote deleted successfully.');

        return redirect(route('votes.index'));
    }

}
