{{-- Starting Election from Herer --}}
<li class="treeview menu-open">
          <a href="#">
            <i class="fa fa-share"></i> <span>Election</span>
            
          </a>
          <ul class="treeview-menu" style="display: block;">
            <li class="treeview menu-open">
              <a href="#"><i class="fa fa-circle-o"></i> Teacher Club Election
                
              </a>
              <ul class="treeview-menu" style="display: block;">
                <li><a href="#"><i class="fa fa-circle-o"></i>Tresurer</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Member</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>General Secretary</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Vice President</a></li>
                
              </ul>
            </li>
            <li class="treeview menu-open">
              <a href="#"><i class="fa fa-circle-o"></i>Sydicate Election
                
              </a>
              <ul class="treeview-menu" style="display: block;">
                <li><a href="#"><i class="fa fa-circle-o"></i>Professor</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Assistant Professor</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Lecturer</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Associate Professior</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Provost</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Dean</a></li>
                
              </ul>
            </li>
            <li class="treeview menu-open">
              <a href="#"><i class="fa fa-circle-o"></i> Dean Election   
              </a>
              <ul class="treeview-menu" style="display: block;">
                <li><a href="#"><i class="fa fa-circle-o"></i>Science</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Arts</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Engineering</a></li>
                {{-- <li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> Level Two
                    
                  </a>
                  <ul class="treeview-menu" style="display: none;">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li> --}}
              </ul>
            </li>
          </ul>
        </li>
{{-- end Election from Herer --}}





@if(Auth::user()->role_id < 3)

	<li class="{{ Request::is('users*') ? 'active' : '' }}">
	    <a href="{!! route('users.index') !!}"><i class="fa fa-edit"></i><span>Users</span></a>
	</li>

		@if(Auth::user()->role_id == 1)

			<li class="{{ Request::is('roles*') ? 'active' : '' }}">
			    <a href="{!! route('roles.index') !!}"><i class="fa fa-edit"></i><span>Roles</span></a>
			</li>

      <li class="{{ Request::is('elections*') ? 'active' : '' }}">
          <a href="{!! route('elections.index') !!}"><i class="fa fa-edit"></i><span>Elections</span></a>
      </li>

      <li class="{{ Request::is('electionCategories*') ? 'active' : '' }}">
          <a href="{!! route('electionCategories.index') !!}"><i class="fa fa-edit"></i><span>Election Categories</span></a>
      </li><li class="{{ Request::is('candidates*') ? 'active' : '' }}">
          <a href="{!! route('candidates.index') !!}"><i class="fa fa-edit"></i><span>Candidates</span></a>
      </li>

      <li class="{{ Request::is('votes*') ? 'active' : '' }}">
          <a href="{!! route('votes.index') !!}"><i class="fa fa-edit"></i><span>Votes</span></a>
      </li>

      <li class="{{ Request::is('electionNews*') ? 'active' : '' }}">
          <a href="{!! route('electionNews.index') !!}"><i class="fa fa-edit"></i><span>Election News</span></a>
      </li>

      
		@endif

@endif





