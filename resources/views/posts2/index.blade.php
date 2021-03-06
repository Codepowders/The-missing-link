@extends('layouts.app')

@section('content')
    <h1>Posts</h1>
    @if(count($posts2) > 0)
        @foreach($posts2 as $post)
            <div class="well">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <img style="width:100%" src="./storage/cover_images/{{$post->cover_image}}">
                    </div>
                    <div class="col-md-8 col-sm-8">
                        <h3><a href="./posts2/{{$post->id}}">{{$post->title}}</a></h3>
                        <small>Written on {{$post->created_at}} by {{$post->user->email}}</small>
                    </div>
                </div>
            </div>
        @endforeach
        {{$posts2->links()}}
    @else
        <p>No posts found</p>
    @endif
@endsection
