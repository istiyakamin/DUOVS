<table class="table table-responsive" id="candidates-table">
    <thead>
        <tr>
            <th>Election Id</th>
        <th>User Id</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>
    <tbody>
    @foreach($candidates as $candidate)
        <tr>
            <td>{!! $candidate->election_id !!}</td>
            <td>{!! $candidate->user_id !!}</td>
            <td>
                {!! Form::open(['route' => ['candidates.destroy', $candidate->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('candidates.show', [$candidate->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('candidates.edit', [$candidate->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>