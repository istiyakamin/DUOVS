<!-- Election Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('election_id', 'Election Id:') !!}
    {!! Form::number('election_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Candidate Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('candidate_id', 'Candidate Id:') !!}
    {!! Form::number('candidate_id', null, ['class' => 'form-control']) !!}
</div>

<!-- User Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('user_id', 'User Id:') !!}
    {!! Form::number('user_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('votes.index') !!}" class="btn btn-default">Cancel</a>
</div>
