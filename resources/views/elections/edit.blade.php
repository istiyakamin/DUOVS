@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Election
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($election, ['route' => ['elections.update', $election->id], 'method' => 'patch']) !!}

                        @include('elections.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection