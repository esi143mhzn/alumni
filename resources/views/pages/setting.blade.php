@extends('layouts.default')

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

                                        {!! Form::open(array('url'=>route('setting', ['id' => $ids]))) !!}
                                  

                                  <tr>
                                            <td><dt> Name:</dt></td>                                    
                                            <td><mark> {{$user->Name}}</mark></td>
                                    </tr>
                                     <br>
                                     
                                     {!!Form::label('Email')!!}
                                     {!!Form::text('Email',$user->Email)!!}
                                     <br>
                                     {!! Form::label('Contact')!!}
                                     {!!Form::text('Contact',$user->Contact)!!}
                                     n_Date)!!}
                                     <br>
                                     {!!Form::label('Working')!!}
                                     {!!Form::text('Working',$user->Comments)!!}
                                     


                                    
                                    	
                                        <tr>
                                            <td><dt> {!!Form::label('Graduation_Date')!!}</dt></td>                                    
                                            <td><mark>{!!Form::text('Graduation_Date',$user->Graduation_Date)!!}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> {!!Form::label('Address')!!}</dt></td>
                                            <td><mark>  {!!Form::text('Address',$user->Address)!!}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Email:</dt></td>
                                            <td><mark> {{$user->Email}}</mark></td>
                                        </tr>
                                        <tr>
                                            <td><dt> Comment</dt></td>
                                            <td><mark> {{$user->Comments}}</mark></td>
                                        </tr>

                                         {!! Form::submit('Save')!!}
                                        {!! Form::close()!!}
                                        

                                    </tbody>

                                </table>                     
                                 
                            </div>
     </div>
     <div class="col-md-1">
     </div>

     <div class="col-md-4">
                            

                            <img src="{{ $user->Image}}" class="img-responsive" alt="name">
                     

	</div>
 </div>
    

@stop