@extends('layouts.default')

@section('content')
<div class="container">
    <br>
    <br>
    <br>
    <br>

<div class="col-md-9">

    <h2>Your Messages</h2>

                {{ $messages->message}}
                {{ $messages->contact}}


{{--
  @foreach($messages as $message)

            <div class="row">

            	{{ $message->contact}}

                {{ $message->message}}
                {{ $message->contact}}
            	

            </div>

     
</div>
@endforeach
--}}


</div>

@endsection