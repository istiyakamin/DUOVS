@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Election News
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($electionNews, ['route' => ['electionNews.update', $electionNews->id], 'method' => 'patch']) !!}

                        @include('election_news.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection