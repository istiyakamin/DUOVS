<table class="table table-responsive" id="votes-table">
    <thead>
        <tr>
            <th>Election Id</th>
        <th>Candidate Id</th>
        <th>User Id</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>
    <tbody>
    @foreach($votes as $vote)
        <tr>
            <td>{!! $vote->election_id !!}</td>
            <td>{!! $vote->candidate_id !!}</td>
            <td>{!! $vote->user_id !!}</td>
            <td>
                {!! Form::open(['route' => ['votes.destroy', $vote->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('votes.show', [$vote->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('votes.edit', [$vote->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>