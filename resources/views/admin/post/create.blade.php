@extends('layouts.master')


@section('title','Add Post')

@section('content')

<div class="container-fluid px-4">

    <div class="card mt-4">

            @if ($errors->any())
            <div class="alert alert-danger">
                @foreach($errors->all() as $error)
                    <div>{{$error}}</div>
                @endforeach
            </div>
            @endif
            
        <div class="card-header">
            <h4>
                Add Posts
                <a href="{{ url('admin/posts')}}" class="btn btn-primary float-end">View Posts</a>
            </h4>
        </div>

        <div class="card-body">
            
            <form action="{{ url('admin/add-post')}}" method="POST">
                @csrf

            <div class="mb-3">
                <label for="">Category</label>
                <select name="category_id" id="" class="form-control">
                    @foreach($category as $cateitem)
                        <option value="{{ $cateitem->id}}">{{ $cateitem->name}}</option> 
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <label for="">Post Name</label> 
                <input type="text" name="name" class="form-control"/>
            </div>

            <div class="mb-3">
                <label for="">Slug</label> 
                <input type="text" name="slug" class="form-control"/>
            </div>

            <div class="mb-3">
                <label for="">Description</label> 
                <textarea name="description" id="my_summernote" class="form-control" rows="4"></textarea>
            </div>

            <div class="mb-3">
                <label for=""> Youtube Iframe Link</label> 
                <input type="text" name="yt_iframe" class="form-control"/>
            </div>

            <h6>Seo Tags</h6>

            <div class="mb-3">
                <label for="">Seo Tag</label>
                <input type="text" name="meta_title" class="form-control">
            </div>

            <div class="mb-3">
                <label for="">Meta Description</label>
                <textarea name="meta_description" rows ="3" class="form-control"></textarea>
            </div>

            <div class="mb-3">
                <label for="">Meta Keywords</label>
                <textarea name="meta_keyword" rows="3" class="form-control"></textarea>
            </div>

            <h6>Status</h6>
            <div class="row">
               
                <div class="col-md-4 mb-3">
                    <label for="">Status</label>
                    <input type="checkbox" name="status" />
                </div>

                <div class="col-md-8">
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary float-end">Save Post</button>
                    </div> 
                </div>

            </div> 

            </form>
        </div>
        
    </div>

</div>

@endsection
