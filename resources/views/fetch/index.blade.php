<link rel="stylesheet" href="css/platform.css">


<body>
  <h1>Boodschappen</h1>
@foreach($user as $user)
<div class="platform">

  <div class="forename"><p><b>Voornaam:</b></p>
{{ $user->forename }}
</div>

  <div class="name"><p><b>Achternaam:</b></p>
{{ $user->name }}
</div>

  <div class="streetnumber"><p><b>straatnummer:</b></P>
{{ $user->streetnumber }}
</div>

<div class="street"><p><b>straat:</b></P>
{{ $user->street }}
</div>

  <div class="zipcode"><p><b>postcode:</b></p>
{{ $user->zipcode }}
</div>


<div class="telephone"><p><b>telefoon:</b></p>
{{ $user->telephone }}
</div>

</div>
@endforeach
</body>
