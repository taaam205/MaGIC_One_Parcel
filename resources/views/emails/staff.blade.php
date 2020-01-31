@component('mail::message')
# Dear {{ $recipient->name }}

The receptionist has received an item with your name, along with this tracking number: <b> {{ $barcode }} </b> <br><br>
Kindly collect at the reception as the space allocated for parcels is limited.<br><br>

<div class="container col-md-5">
    {{ $optional }}
</div>
<br>

{{-- @component('mail::button', ['url' => ''])
Button Text
@endcomponent --}}

Thanks,<br>
<div class="container">
    {{ $sender->name }}
</div>
<br>
<h5>
MALAYSIAN GLOBAL INNOVATION & CREATIVITY CENTRE<br>
    Block 3730, Persiaran APEC,<br>
    63000 Cyberjaya, Malaysia<br>
    +60383244800
</h5>
@endcomponent
