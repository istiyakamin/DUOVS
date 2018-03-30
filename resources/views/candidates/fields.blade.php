<!-- Election Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('election_id', 'Election Id:') !!}
    <div class="form-group">
      <select class="form-control" name="election_id" id="sel1">
      			<option value="">Select One</option>
          @foreach($election as $single_election)
                <option value="{{$single_election['id']}}">{{$single_election['name']}}</option>
          @endforeach
        
      </select>
    </div> 
</div>

<!-- User Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('user_id', 'User Id:') !!}
    <select class="form-control" name="user_id" id="sel1">
      			<option value="">Select One</option>
          @foreach($user as $single_user)
                <option value="{{$single_user['id']}}">{{$single_user['name']}}({{$single_user['faculty']}})</option>
          @endforeach
        
      </select>
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('candidates.index') !!}" class="btn btn-default">Cancel</a>
</div>
