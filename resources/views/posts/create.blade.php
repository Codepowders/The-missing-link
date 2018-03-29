@extends('layouts.app')

@section('content')
    <h1>Create Post</h1>
    {!! Form::open(['action' => 'PostsController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
        <div class="form-group">
            {{Form::label('title', 'Title')}}
            {{Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Title'])}}
        </div>
        <div class="form-group">
            {{Form::label('body', 'Body')}}
            {{Form::textarea('body', '', ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Body Text'])}}
        </div>
        <div class="form-group">
            {{Form::label('subtitle', 'Subtitle')}}
            {{Form::text('subtitle', '', ['class' => 'form-control', 'placeholder' => 'Subtitle'])}}
        </div>
        <div class="form-group">
            {{Form::label('text', 'Subbody')}}
            {{Form::textarea('text', '', ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Subbody Text'])}}
        </div>
        <div class="form-group">
            <select name="cats[]" style='width:200px' multiple>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endforeach
            </select>
            {{Form::label('text1', 'Nieuwe categorie')}}
            {{Form::text('text1', '', ['class' => 'form-control', 'placeholder' => 'Nieuwe categorie'])}}
        </div>
        <div class="form-group">
            {{Form::file('cover_image')}}
        </div>
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection