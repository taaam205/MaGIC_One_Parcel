@extends('layouts.app')

@section('content')
<div class="container">


    <div class="tab-content mt-3" id="myTabContent">
        <div class="tab-pane fade show active" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
            <div class="row justify-content-center mt-3 mb-3">
                <h3>Inform Recipient of Parcel</h3>
            </div>

            <form action="{{ route('home.sendEmail') }}" method="post" id="parcel_form">
                @csrf
                <div class="container row justify-content-center">
                    <div class="col-md-4 mt-2 mb-2">

                        <div class="input-group mb-3">
                            <!-- <div class="input-group-prepend">
                                <label class="input-group-text" for="inputGroupSelect01">Staff</label>
                            </div> -->
                            <select name="staff_id" class="custom-select form-control" id="inputGroupSelect01">
                                <option selected>Select Recipient</option>
                                @foreach ($staffs as $staff)
                                <option value="{{ $staff->id }}">{{ $staff->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3 mt-2 mb-2">
                        <input type="text" class="form-control" name="barcode" placeholder="Tracking Number">
                    </div>
                    

                    <div class="container row mt-2 justify-content-center">
                        <div class="col-md-7">
                            <div class="form-group">
                                <label for="">Optional Message</label>
                                <textarea class="form-control" name="optional" id="" rows="5"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="container row justify-content-center">
                        <!--Later when whatsapp button will work -->
                        <!--<button type="button" class="btn btn-success mr-2 mt-2" style="background-color: #2cb75a;">Send on What's App</button>-->
                        <button id="submitForm" type="submit" class="btn btn-primary ml-2 mt-2" type="submit" style="box-shadow: 0 0 2rem 0 rgba(59, 68, 78, 0.15);">Send on Email</button>
                    </div>
                </div>
            </form>
            
            @if (Session::has('Mail'))
                <div class="alert alert-info alert-dismissible fade show mt-4" role="alert">
                    <strong>Great!</strong> {{ Session::get('Mail') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            @if (Session::has('mailSendFailed'))
                <div class="alert alert-danger alert-dismissible fade show mt-4" role="alert">
                    <strong>Bad Luck!</strong> {{ Session::get('mailSendFailed') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

        </div>
    </div>
</div>
@endsection


@section('javascript')
<!-- $(document).ready(function() {
    $('#parcel_form').on('submit', function(e){
        e.preventDefault();
        });
    }); -->

    <!-- $(document).ready(function(){
    $("#submitForm").click(function(){        
        $("#parcel_form").submit(); // Submit the form
    }); -->
});
@endsection