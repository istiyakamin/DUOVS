<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateElectionCategoryRequest;
use App\Http\Requests\UpdateElectionCategoryRequest;
use App\Repositories\ElectionCategoryRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class ElectionCategoryController extends AppBaseController
{
    /** @var  ElectionCategoryRepository */
    private $electionCategoryRepository;

    public function __construct(ElectionCategoryRepository $electionCategoryRepo)
    {
        $this->electionCategoryRepository = $electionCategoryRepo;
    }

    /**
     * Display a listing of the ElectionCategory.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->electionCategoryRepository->pushCriteria(new RequestCriteria($request));
        $electionCategories = $this->electionCategoryRepository->all();

        return view('election_categories.index')
            ->with('electionCategories', $electionCategories);
    }

    /**
     * Show the form for creating a new ElectionCategory.
     *
     * @return Response
     */
    public function create()
    {
        return view('election_categories.create');
    }

    /**
     * Store a newly created ElectionCategory in storage.
     *
     * @param CreateElectionCategoryRequest $request
     *
     * @return Response
     */
    public function store(CreateElectionCategoryRequest $request)
    {
        $input = $request->all();

        $electionCategory = $this->electionCategoryRepository->create($input);

        Flash::success('Election Category saved successfully.');

        return redirect(route('electionCategories.index'));
    }

    /**
     * Display the specified ElectionCategory.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $electionCategory = $this->electionCategoryRepository->findWithoutFail($id);

        if (empty($electionCategory)) {
            Flash::error('Election Category not found');

            return redirect(route('electionCategories.index'));
        }

        return view('election_categories.show')->with('electionCategory', $electionCategory);
    }

    /**
     * Show the form for editing the specified ElectionCategory.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $electionCategory = $this->electionCategoryRepository->findWithoutFail($id);

        if (empty($electionCategory)) {
            Flash::error('Election Category not found');

            return redirect(route('electionCategories.index'));
        }

        return view('election_categories.edit')->with('electionCategory', $electionCategory);
    }

    /**
     * Update the specified ElectionCategory in storage.
     *
     * @param  int              $id
     * @param UpdateElectionCategoryRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateElectionCategoryRequest $request)
    {
        $electionCategory = $this->electionCategoryRepository->findWithoutFail($id);

        if (empty($electionCategory)) {
            Flash::error('Election Category not found');

            return redirect(route('electionCategories.index'));
        }

        $electionCategory = $this->electionCategoryRepository->update($request->all(), $id);

        Flash::success('Election Category updated successfully.');

        return redirect(route('electionCategories.index'));
    }

    /**
     * Remove the specified ElectionCategory from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $electionCategory = $this->electionCategoryRepository->findWithoutFail($id);

        if (empty($electionCategory)) {
            Flash::error('Election Category not found');

            return redirect(route('electionCategories.index'));
        }

        $this->electionCategoryRepository->delete($id);

        Flash::success('Election Category deleted successfully.');

        return redirect(route('electionCategories.index'));
    }
}
