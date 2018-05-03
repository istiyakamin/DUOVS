<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateElectionRequest;
use App\Http\Requests\UpdateElectionRequest;
use App\Repositories\ElectionRepository;
use App\Http\Controllers\AppBaseController;
use DB;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;
use App\Models\ElectionCategory;
use App\Models\Candidate;
use App\Models\Vote;
use Auth;

class ElectionController extends AppBaseController
{
    /** @var  ElectionRepository */
    private $electionRepository;

    public function __construct(ElectionRepository $electionRepo)
    {
        $this->electionRepository = $electionRepo;
    }

    /**
     * Display a listing of the Election.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->electionRepository->pushCriteria(new RequestCriteria($request));
        $elections = $this->electionRepository->all();

        return view('elections.index')
            ->with('elections', $elections);
    }

    /**
     * Show the form for creating a new Election.
     *
     * @return Response
     */
    public function create()
    {
        $all_election_categories = ElectionCategory::all();
        return view('elections.create', compact('all_election_categories'));
    }

    /**
     * Store a newly created Election in storage.
     *
     * @param CreateElectionRequest $request
     *
     * @return Response
     */
    public function store(CreateElectionRequest $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'description' => 'required',
            'election_category_id' => 'required|integer',
        ]);

        $input = $request->all();

        $election = $this->electionRepository->create($input);

        Flash::success('Election saved successfully.');

        return redirect(route('elections.index'));
    }

    /**
     * Display the specified Election.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $election = $this->electionRepository->findWithoutFail($id);
        $candidate_lists = Candidate::where('election_id', $id)->get();
        $vote_counts = Vote::where('election_id', $id)->get();
        $winner = DB::select(DB::raw("SELECT `candidate_id`, SUM(`vote_count`) FROM votes WHERE `election_id`=$id GROUP BY 1 ORDER BY 2 DESC LIMIT 1"));
        if($id = 2){
            $member_winner = DB::select(DB::raw("SELECT `candidate_id`, SUM(`vote_count`) FROM votes WHERE `election_id`=$id GROUP BY 1 ORDER BY 2 DESC LIMIT 10"));
        }

        
        $vote_exitsts = Vote::where('election_id', $id)->where('user_id', Auth::user()->id)->get();

        
        
        
       



        if (empty($election)) {
            Flash::error('Election not found');

            return redirect(route('elections.index'));
        }

        return view('elections.show', compact('election', 'candidate_lists', 'vote_counts', 'winner','vote_exitsts','member_winner'));
    }

    /**
     * Show the form for editing the specified Election.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $election = $this->electionRepository->findWithoutFail($id);
        $all_election_categories = ElectionCategory::all();

        if (empty($election)) {
            Flash::error('Election not found');

            return redirect(route('elections.index'));
        }

        return view('elections.edit', compact('election', 'all_election_categories'));
        // return view('elections.edit')->with('election', $election);
    }

    /**
     * Update the specified Election in storage.
     *
     * @param  int              $id
     * @param UpdateElectionRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateElectionRequest $request)
    {
        $this->validate($request, [
            'name' => 'required|max:255',
            'description' => 'required',
            'election_category_id' => 'required|integer',
        ]);

        $election = $this->electionRepository->findWithoutFail($id);

        if (empty($election)) {
            Flash::error('Election not found');

            return redirect(route('elections.index'));
        }

        $election = $this->electionRepository->update($request->all(), $id);

        Flash::success('Election updated successfully.');

        return redirect(route('elections.index'));
    }

    /**
     * Remove the specified Election from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $election = $this->electionRepository->findWithoutFail($id);

        if (empty($election)) {
            Flash::error('Election not found');

            return redirect(route('elections.index'));
        }

        $this->electionRepository->delete($id);

        Flash::success('Election deleted successfully.');

        return redirect(route('elections.index'));
    }
}
