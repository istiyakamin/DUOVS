<table class="table table-responsive" id="elections-table">
    <thead>
        <tr>
            <th>Name</th>
        <th>Description</th>
        <th>Election Category</th>
        <th>Start</th>
        <th>End</th>
        <th>Is Active</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>
    <tbody>
    @foreach($elections as $election)
        <tr>
            <td>{!! $election->name !!}</td>
            <td>{!! $election->description !!}</td>
            <td>{!! $election->election_category['name'] !!}</td>
            <td>{!! $election->start !!}</td>
            <td>{!! $election->end !!}</td>
            <td>{!! $election->is_active !!}</td>
            <td>
                {!! Form::open(['route' => ['elections.destroy', $election->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('elections.show', [$election->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('elections.edit', [$election->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>