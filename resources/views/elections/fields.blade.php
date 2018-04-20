<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('name', 'Name:') !!}
    {!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', 'Description:') !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

<!-- Election Category Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('election_category_id', 'Election Category:') !!}
    <div class="form-group">
      <select class="form-control" name="election_category_id" id="sel1">
                <option>Select One</option>
          @foreach($all_election_categories as $single_election_category)
                <option value="{{$single_election_category['id']}}">{{$single_election_category['name']}}</option>
          @endforeach
        
      </select>
    </div> 

</div>

<!-- Start Field -->
<div class="form-group col-sm-6">
    {!! Form::label('start', 'Start:') !!}
    <input class="form-control" name="start" type="datetime-local" value="start" id="start">
</div>

<!-- End Field -->
<div class="form-group col-sm-6">
    {!! Form::label('end', 'End:') !!}
    <input class="form-control" name="end" type="datetime-local" value="start" id="start">
</div>

<!-- Is Active Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_active', 'Is Active:') !!}
    <label class="checkbox-inline">
        {!! Form::hidden('is_active', false) !!}
        {!! Form::checkbox('is_active', '1', null) !!} Yes
    </label>
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('elections.index') !!}" class="btn btn-default">Cancel</a>
</div>
