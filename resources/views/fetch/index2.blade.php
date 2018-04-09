<link rel="stylesheet" href="css/platform.css">
@foreach($user as $user)
<div class="platform">

  <div class="forename">
{{ $user->forename }}
</div>

  <div class="name">
{{ $user->name }}
</div>

  <div class="streetnumber">
{{ $user->streetnumber }}
</div>

  <div class="zipcode">
{{ $user->zipcode }}
</div>
</div>
@endforeach
