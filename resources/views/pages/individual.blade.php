@extends('layouts.default')
@if (Auth::guest())
<p>               </p>
<p>                 </p>
<p>                 </p>
<h1> hello </h1>

<p> Please <a href="{{ url('/login') }}"> Login </a>or <a href="{{ url('/register') }}">register</a> </p>
                       <!--  <li><a href="{{ url('/login') }}">Login</a></li>
                        <li><a href="{{ url('/register') }}">Register</a></li> -->
                    @else

@section('content')
<div class="container" >
    <br>
    <br>
    <br>
    <br>
    <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                    	<tr>
                                            <td><dt> Name:</dt></td>                                    
                                            <td><mark> {{$user_ind->Name}}</mark></td>
                                        </tr>
                                         <tr>
                                            <td><dt> Graduation Date:</dt></td>                                    
                                            <td><mark> {{$user_ind->Graduation_Date}}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Address:</dt></td>
                                            <td><mark> {{$user_ind->Address}}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Email:</dt></td>
                                            <td><mark> {{$user_ind->Email}}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Comment</dt></td>
                                            <td><mark> {{$user_ind->Comments}}</mark></td>
                                        </tr>
                                         <tr>
                                            <td><dt>Profession:</dt></td>                                    
                                            <td><mark> {{$user_ind->Profession}}</mark></td>
                                        </tr>

                                    

                                    </tbody>

                                </table>  

                                 
                            </div>
        <a href="{!!url('message', $user_ind->ID)!!}" type="button" class="btn btn-primary">Drop a message</a>                   
    </div>
     <div class="col-md-1">
     </div>

     <div class="col-md-4">
                            

                            <img src="{{ $user_ind->Image}}" class="img-responsive" alt="name">
                     

	</div>
 </div>
    

@stop
@endif