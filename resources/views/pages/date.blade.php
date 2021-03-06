@extends('layouts.default')
@section('content')
<div class="container" >
    <br>
    <br>


<div class="col-md-3">
 <h2>Search Box</h2>
           <div id="custom-search-input">
                            <div class="input-group col-md-12">
                             <form action="/search" method="GET">
                                <input type="text" name="search" value="" class="search-query form-control" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit">
                                        <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                                </form>
                            </div>
            </div>
       <h3>Alumni Graduation Date</h3>
           <div id="custom-search-input">
                            <div class="input-group col-md-12">
                             <form action="/datesearch" method="GET">
                                <input type="text" name="datesearch" value="" class="  search-query form-control" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                                </form>
                            </div>
            </div>
            <h3>Alumni Profession</h3>
      <div id="custom-search-input">
                            <div class="input-group col-md-12">
                             <form action="/profsearch" method="GET">
                                <input type="text" name="profsearch" value="" class="  search-query form-control" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                                </form>
                            </div>
            </div>
 


    
    
</div>





<div class="col-md-9">

   
   
         @if(count($users) == 0)
         <h1> No Alumni found </h1>
         @else
    
 <h2>Our Alumni</h2>

        @foreach($users as $user)
        

            <div class="row">
             <div class="col-md-12">
                <div class="panel panel-info">
                    <div  class="panel-heading">                       
                        <h3><a href="{!!url('individual', $user->ID)!!}"  ><span class="badge">{{ $user->ID }}</span>
                            {{ $user->Name }} </a></h3> 
                    </div>
                    <div class="panel-body">
                        <div class="col-md-8">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td><dt> Graduation Date:</dt></td>                                    
                                            <td><mark> {{$user->Graduation_Date}}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Address:</dt></td>
                                            <td><mark> {{$user->Address}}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Email:</dt></td>
                                            <td><mark> {{$user->Email}}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Comment</dt></td>
                                            <td><mark> {{$user->Comments}}</mark></td>
                                        </tr>
                                         <tr>
                                            <td><dt>Profession:</dt></td>                                    
                                            <td><mark> {{$user->Profession}}</mark></td>
                                        </tr>

                                    </tbody>

                                </table>                     
                                 
                            </div>
                        </div>

                        <div class="col-md-4">
                            <a href="{!!url('individual', $user->ID)!!}">

                            <img src="{{ $user->Image }}" class="img-circle" alt="name">
                        </a>


                        </div>

                 </div>
                 

        


                

            
                </div>
            </div>
        </div>
        @endforeach
        @endif
       
    
</div>






@endsection
        



