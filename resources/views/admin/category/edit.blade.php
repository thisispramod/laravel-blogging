@extends('layouts.master')


@section('title','Category')

@section('content')

<div class="container-fluid px-4">
    
    <div class="card mt-4">
        <div class="card-header">
            <h4 class="">Edit {{ $category->name}} Category</h4> 
        </div>

        <div class="card-body">

            @if ($errors->any())
            <div class="alert alert-danger">
                @foreach($errors->all() as $error)
                    <div>{{$error}}</div>
                @endforeach
            </div>
            @endif

            <form action="{{ url('admin/update-category/'.$category->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="mb-3">
                    <label for="">Category Name</label>
                    <input type="text" name="name" value="{{ $category->name}}" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="">Slug</label>
                    <input type="text" name="slug" value="{{ $category->slug}}" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="">Description</label>
                    <input type="text" name="description" id="my_summernote" value="{{ $category->description}}" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="">Image</label>
                    <input type="file" name="image" class="form-control">
                </div>

                <h6>Seo Tags</h6>
                <div class="mb-3">
                    <label for="">Seo Tag</label>
                    <input type="text" name="meta_title" value="{{ $category->meta_title}}" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="">Meta Description</label>
                    <textarea name="meta_description" rows="3" class="form-control">{{ $category->meta_description}}</textarea>
                </div>

                <div class="mb-3">
                    <label for="">Meta Keywords</label>
                    <textarea name="meta_keyword" rows="3"  class="form-control">{{ $category->meta_keyword}}</textarea>
                </div>

                <h6>Status Mode</h6>
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <label for="">Navbar Status</label>
                        <input type="checkbox"  name="navbar_status" {{ $category->navbar_status == '1' ? 'checked' : ''}} />
                    </div>

                    <div class="col-md-3 mb-3">
                        <label for="">Status</label>
                        <input type="checkbox" name="status" {{ $category->status == '1' ? 'checked' : ''}} />
                    </div>

                    <div class="col-md-6">
                        <button type="submit" class="btn btn-primary">Update Category</button>
                    </div>
                </div> 
            </form>

        </div> 

    </div>  
</div>

@endsection