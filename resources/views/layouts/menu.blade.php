
<ul class="sidebar-menu tree" data-widget="tree">
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Teacher Club Election</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="http://127.0.0.1:8000/elections/1"><i class="fa fa-circle-o"></i>Treasurer</a></li>
                <li><a href="http://127.0.0.1:8000/elections/2"><i class="fa fa-circle-o"></i>Member</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Joint Secretary</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>President</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Vice President</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Syndicate Election</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="#"><i class="fa fa-circle-o"></i>Professor</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Assistant Professor</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Lecturer</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Associate Professior</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Provost</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Dean</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dean Election</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="#"><i class="fa fa-circle-o"></i>Science</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Arts</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Engineering</a></li>
          </ul>
        </li>
        
      </ul>





@if(Auth::user()->role_id < 3)

	<li class="{{ Request::is('users*') ? 'active' : '' }}">
	    <a href="{!! route('users.index') !!}"><i class="fa fa-edit"></i><span>Users</span></a>
	</li>

		@if(Auth::user()->role_id == 1)

		{{-- 	<li class="{{ Request::is('roles*') ? 'active' : '' }}">
			    <a href="{!! route('roles.index') !!}"><i class="fa fa-edit"></i><span>Roles</span></a>
			</li>
 --}}
      <li class="{{ Request::is('elections*') ? 'active' : '' }}">
          <a href="{!! route('elections.index') !!}"><i class="fa fa-edit"></i><span>Elections</span></a>
      </li>

      <li class="{{ Request::is('electionCategories*') ? 'active' : '' }}">
          <a href="{!! route('electionCategories.index') !!}"><i class="fa fa-edit"></i><span>Election Categories</span></a>
      </li>

      <li class="{{ Request::is('candidates*') ? 'active' : '' }}">
          <a href="{!! route('candidates.index') !!}"><i class="fa fa-edit"></i><span>Candidates</span></a>
      </li>

      <li class="{{ Request::is('electionNews*') ? 'active' : '' }}">
          <a href="{!! route('electionNews.index') !!}"><i class="fa fa-edit"></i><span>Election News</span></a>
      </li>

      
		@endif

@endif





