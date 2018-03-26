<!-- Id Field -->
<div class="form-group">
    {!! Form::label('id', 'Id:') !!}
    <p>{!! $vote->id !!}</p>
</div>

<!-- Deleted At Field -->
<div class="form-group">
    {!! Form::label('deleted_at', 'Deleted At:') !!}
    <p>{!! $vote->deleted_at !!}</p>
</div>

<!-- Election Id Field -->
<div class="form-group">
    {!! Form::label('election_id', 'Election Id:') !!}
    <p>{!! $vote->election_id !!}</p>
</div>

<!-- Candidate Id Field -->
<div class="form-group">
    {!! Form::label('candidate_id', 'Candidate Id:') !!}
    <p>{!! $vote->candidate_id !!}</p>
</div>

<!-- User Id Field -->
<div class="form-group">
    {!! Form::label('user_id', 'User Id:') !!}
    <p>{!! $vote->user_id !!}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{!! $vote->created_at !!}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{!! $vote->updated_at !!}</p>
</div>

