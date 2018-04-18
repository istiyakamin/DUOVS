<div class="row">
<div class="col-md-8">
          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class=""><a href="#tab_1" data-toggle="tab" aria-expanded="false">Election</a></li>
              <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Result</a></li>
              <li class="active"><a href="#tab_3" data-toggle="tab" aria-expanded="true">Election Details</a></li>
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                  Dropdown <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                  <li role="presentation" class="divider"></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                </ul>
              </li>
              <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane " id="tab_1">
                
                  <div class="panel panel-primary">
                      <div class="panel-heading">
                          <h3 class="panel-title">
                              <span class="glyphicon glyphicon-arrow-right"></span>Cast Your Vote please </a>
                          </h3>
                      </div>
                      <form action="/votes/count" method="post">
                        {{ csrf_field() }}
                        <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                        <input type="hidden" name="election_id" value="{{ $election->id }}">
                        <div class="panel-body">
                            <ul class="list-group">
                              @foreach($list_of_candidate as $candidate_list)
                                <li class="list-group-item">
                                    <div class="radio">
                                        <label>
                                           <!-- <input type="radio" name="candidate_id" value="{{ DB::table('users')->where('id', $candidate_list->user_id)->first()->id }}">
                                             {!! DB::table('users')->where('id', $candidate_list->user_id)->first()->name !!} -->
                                            {{  DB::table('candidates')->where('election_id', 5)->get() }}
                                        </label>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                            <div class="panel-footer">
                              <button  type="submit" class="btn btn-success btn-sm">
                                  Vote
                              </button>
                            </div>
                        </div>
                      </form>
              </div>
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
                
            <div class="box-header with-border">
              <h3 class="box-title">Progress Bars Different Sizes</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

                <div class="progress progress-sm active">
                  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                    <span class="sr-only">20% Complete</span>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
          
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane active" id="tab_3">
                <h3>Election Name: {{ $election->name }}</h3>
                    {{$election->description}} <br>
                    <b>Election Category:</b> {{ $election->election_category['name'] }} <br>
                    <b>Start Date:</b> {{ $election->start }} <br>
                    <b>Close Date:</b> {{ $election->end }}
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
        </div>
</div>
