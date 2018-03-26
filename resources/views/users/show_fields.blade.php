<div class="col-md-6">
<div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-aqua-active">
              <h3 class="widget-user-username">{!! $user->name !!}</h3>
              <h5 class="widget-user-desc">{!! $user->email !!}</h5>
            </div>
            <div class="widget-user-image">
              <img class="img-circle" src="{{asset('img/male.png')}}" alt="User Avatar">
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-6 border-right">
                  <div class="description-block">
                    <h5 class="description-header">{{ $user->role['name'] }}</h5>
                    <span class="description-text">Role</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-6 border-right">
                  <div class="description-block">
                    <h5 class="description-header">{!! $user->department !!}</h5>
                    <span class="description-text">Department</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                
              </div>
              <!-- /.row -->
              <div class="box-footer no-padding">
              <ul class="nav nav-stacked">
                <li><a href="#">Name <span class="pull-right">{{$user->name}}</span></a></li>
                <li><a href="#">Email <span class="pull-right">{{$user->email}}</span></a></li>
                <li><a href="#">Department <span class="pull-right">{{$user->department}}</span></a></li>
                <li><a href="#">Faculty <span class="pull-right">{{$user->faculty}}</span></a></li>
                <li><a href="#">Phone Number <span class="pull-right">{{$user->phone}}</span></a></li>
                <li><a href="#">Role <span class="pull-right">{{$user->role['name']}}</span></a></li>
                <li><a href="#">Joined At <span class="pull-right ">{!! $user->created_at->format('d M, Y') !!}</span></a></li>
              </ul>
            </div>
            </div>
          </div>
</div>

