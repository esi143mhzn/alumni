<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            
                
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <ul class="nav navbar-nav">
                	<li>
                        <a href="/">Home</a>
                    </li>
                    <li>
                        <a href="/about">About</a>
                    </li>
                    <li>
                        <a href="/forums">Forum</a>
                    </li>
                    <li>
                        <a href="/contact">Contact</a>
                    </li>
                </ul>
                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @if (Auth::guest())
                        <li><a href="{{ url('/login') }}">Login</a></li>
                        <li><a href="{{ url('/register') }}">Register</a></li>
                    @else
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>                            
                            <ul class="dropdown-menu" role="menu">

                                <li>
                                    <a href="#"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>Setting</a>
                                     <ul class="dropdown-menu-sub">
                                        <li><a href="{!!url('setting', Auth::user()->id )!!}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Edit Profile</a></li>
                                        <li><a href="{!!url('viewmessage', Auth::user()->id )!!}"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>View Message </a></li>
                                        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Edit Account</a></li>

                                    </ul>
                                </li>




                        

                                <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                            </ul>
                        </li>
                    @endif
                </ul>
            </div>


            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>