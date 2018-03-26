@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Vote
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($vote, ['route' => ['votes.update', $vote->id], 'method' => 'patch']) !!}

                        @include('votes.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection