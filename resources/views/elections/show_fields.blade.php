

<!-- Name Field -->
<div class="form-group">
    {!! Form::label('name', 'Name:') !!}
    <p>{!! $election->name !!}</p>
</div>

<!-- Description Field -->
<div class="form-group">
    {!! Form::label('description', 'Description:') !!}
    <p>{!! $election->description !!}</p>
</div>

<!-- Election Category Id Field -->
<div class="form-group">
    {!! Form::label('election_category_id', 'Election election_category:') !!}
    <p>{!! $election->election_category['name'] !!}</p>
</div>

<!-- Start Field -->
<div class="form-group">
    {!! Form::label('start', 'Start:') !!}
    <p>{!! $election->start !!}</p>
</div>

<!-- End Field -->
<div class="form-group">
    {!! Form::label('end', 'End:') !!}
    <p>{!! $election->end !!}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{!! $election->created_at->format('d M, Y') !!}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{!! $election->updated_at->format('d M, Y') !!}</p>
</div>

