<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateElectionNewsRequest;
use App\Http\Requests\UpdateElectionNewsRequest;
use App\Repositories\ElectionNewsRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class ElectionNewsController extends AppBaseController
{
    /** @var  ElectionNewsRepository */
    private $electionNewsRepository;

    public function __construct(ElectionNewsRepository $electionNewsRepo)
    {
        $this->electionNewsRepository = $electionNewsRepo;
    }

    /**
     * Display a listing of the ElectionNews.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->electionNewsRepository->pushCriteria(new RequestCriteria($request));
        $electionNews = $this->electionNewsRepository->all();

        return view('election_news.index')
            ->with('electionNews', $electionNews);
    }

    /**
     * Show the form for creating a new ElectionNews.
     *
     * @return Response
     */
    public function create()
    {
        return view('election_news.create');
    }

    /**
     * Store a newly created ElectionNews in storage.
     *
     * @param CreateElectionNewsRequest $request
     *
     * @return Response
     */
    public function store(CreateElectionNewsRequest $request)
    {
        $input = $request->all();

        $electionNews = $this->electionNewsRepository->create($input);

        Flash::success('Election News saved successfully.');

        return redirect(route('electionNews.index'));
    }

    /**
     * Display the specified ElectionNews.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $electionNews = $this->electionNewsRepository->findWithoutFail($id);

        if (empty($electionNews)) {
            Flash::error('Election News not found');

            return redirect(route('electionNews.index'));
        }

        return view('election_news.show')->with('electionNews', $electionNews);
    }

    /**
     * Show the form for editing the specified ElectionNews.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $electionNews = $this->electionNewsRepository->findWithoutFail($id);

        if (empty($electionNews)) {
            Flash::error('Election News not found');

            return redirect(route('electionNews.index'));
        }

        return view('election_news.edit')->with('electionNews', $electionNews);
    }

    /**
     * Update the specified ElectionNews in storage.
     *
     * @param  int              $id
     * @param UpdateElectionNewsRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateElectionNewsRequest $request)
    {
        $electionNews = $this->electionNewsRepository->findWithoutFail($id);

        if (empty($electionNews)) {
            Flash::error('Election News not found');

            return redirect(route('electionNews.index'));
        }

        $electionNews = $this->electionNewsRepository->update($request->all(), $id);

        Flash::success('Election News updated successfully.');

        return redirect(route('electionNews.index'));
    }

    /**
     * Remove the specified ElectionNews from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $electionNews = $this->electionNewsRepository->findWithoutFail($id);

        if (empty($electionNews)) {
            Flash::error('Election News not found');

            return redirect(route('electionNews.index'));
        }

        $this->electionNewsRepository->delete($id);

        Flash::success('Election News deleted successfully.');

        return redirect(route('electionNews.index'));
    }

    public function news(Request $request)
    {
        $this->electionNewsRepository->pushCriteria(new RequestCriteria($request));
        $electionNews = $this->electionNewsRepository->all();

        return view('election_news.news_template.index', compact('electionNews'));
    }
}
