@extends('layouts.default')

@section('content')
<div class="container" >
    <br>
    <br>
    <br>
    <br>
     {{ $user_mess->Name}}

     	{!! Form::open(array('action' => array('UC@message', $user_mess->ID, 'method'=>'post'))) !!}
		
		 {!! Form::label('id')!!}
		 {!!Form::text('id',$user_mess->ID)!!}


	{{--	
				 {!! Form::select('id', array('L' => $user_mess->ID) , 'L') !!}

		{!! Form::label('id')!!}
		{!!Form::text('id',$user_mess->ID)!!}

		{!! Form::radio('name','value',true) !!}
		
	--}}

		{!! Form::label('message','Your Message') !!}
		{!! Form::text('message'," " ) !!}

		{!! Form::label('sender','Your Name') !!}
		{!! Form::text('sender'," " ) !!}

		{!! Form::label('contact','Your Contact No:') !!}
		{!! Form::text('contact'," " ) !!}
	

		
			
		{!! Form::submit('Save')!!}

		{!! Form::close() !!}


</div>
