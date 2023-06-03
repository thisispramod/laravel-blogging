<div class="global-navbar">
    <div class="container">
        <div class="row">
            <div class="col-md-3 d-none d-sm-none d-md-inline">
                @php 
                 $setting = App\Models\Setting::find(1);
                @endphp
                @if($setting)
                <img src="{{ asset('uploads/settings/'.$setting->logo)}}" style="height:50px; width:50px;" alt="logo">
                @endif
            </div>
            <div class="col-md-9 my-auto">
                <div class="border p-2">
                    <h5>
                        Advertise Here
                    </h5>
                </div> 
            </div>
        </div>
    </div>   
</div>
<div class="sticky-top">
    <nav class="navbar navbar-expand-lg navbar-light bg-green mt-2"> 
        <div class="container">

            <a href="" class="navbar-brand d-inline d-sm-inline d-md-none">
            <img src="{{ asset('uploads/settings/'.$setting->logo)}}" style="height:50px; width:50px;" alt="logo">

            </a>
             
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button> 
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/')}}">Home</a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                @php 
                $categories = App\Models\Category::where('navbar_status','0')->where('status','0')->get();
                @endphp
                @foreach($categories as $cateitem)
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('tutorial/'.$cateitem->slug)}}">{{ $cateitem->name}}</a>
                </li> 
                @endforeach
                @if(Auth::check())
                <li>
                    <a class="nav-link btn-danger" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">Logout</a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>
                @endif
                
                </ul> 
            </div>
        </div>
    </nav> 
</div>

 