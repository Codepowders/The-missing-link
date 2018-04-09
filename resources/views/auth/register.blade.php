


<head>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/register.css">
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Old+Standard+TT:400,400i,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
</head>




<div class="main main-agileits">
  <h1>The newlink</h1>
  <div class="main-agilerow">
    <div class="signup-wthreetop">
      <h2>Hier kunt u registeren.</h2>
      <p>Help uw naasten!</p>
    </div>

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">


  <div class="contact-wthree">
                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <h3>Stap 1: Persoonlijke gegevens.</h3>
                        <div class="form-w3step1">
                      <div class="form-group{{ $errors->has('forename') ? ' has-error' : '' }}">
                          <div class="col-md-6">
                              <input id="forename" type="text" class="form-control" placeholder="Voornaam" name="forename" value="{{ old('forename') }}" required autofocus>

                                @if ($errors->has('forename'))
                                    <span class="help-block">
                                          <strong>{{ $errors->first('forename') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>






                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" placeholder="achternaam" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" placeholder="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                                                <div class="form-group{{ $errors->has('telephone') ? ' has-error' : '' }}">

                                                    <div class="col-md-6">
                                                        <input id="telephone" type="text" class="form-control" name="telephone" placeholder="Telefoon" value="{{ old('telephone') }}" required>

                                                        @if ($errors->has('telephone'))
                                                            <span class="help-block">
                                                                <strong>{{ $errors->first('telephone') }}</strong>
                                                            </span>
                                                        @endif
                                                    </div>
                                                </div>







                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">

                          <div class="col-md-6">
                                <input id="password" type="password" class="form-control" placeholder="password" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group">


                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" placeholder="bevestig wachtwoord" name="password_confirmation" required>
                            </div>
                        </div>
                        </div>



                        <h3>Stap 2: adres gegevens.</h3>
<div class="form-w3step1">
                                <div class="form-group{{ $errors->has('streetnumber') ? ' has-error' : '' }}">
                                    <div class="col-md-6">
                                        <input id="streetnumber" type="text" class="form-control" placeholder="Straatnummer" name="streetnumber" value="{{ old('streetnumber') }}" required autofocus>

                                          @if ($errors->has('streetnumber'))
                                              <span class="help-block">
                                                    <strong>{{ $errors->first('streetnumber') }}</strong>
                                                  </span>
                                              @endif
                                          </div>
                                      </div>


                                      <div class="form-group{{ $errors->has('street') ? ' has-error' : '' }}">
                                          <div class="col-md-6">
                                              <input id="street" type="text" class="form-control" placeholder="straat" name="street" value="{{ old('street') }}" autofocus>

                                                @if ($errors->has('street'))
                                                    <span class="help-block">
                                                          <strong>{{ $errors->first('street') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>





                                      <div class="form-group{{ $errors->has('zipcode') ? ' has-error' : '' }}">
                                          <div class="col-md-6">
                                              <input id="zipcode" type="text" class="form-control" placeholder="postcode" name="zipcode" value="{{ old('zipcode') }}" autofocus>

                                                @if ($errors->has('zipcode'))
                                                    <span class="help-block">
                                                          <strong>{{ $errors->first('zipcode') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                                          </div>






                                            <h3>Stap 3: Kies waar u mee wilt helpen.  </h3>
                                            <div class="form-w3step1">

                                      <div class="form-group{{ $errors->has('zipcode') ? ' has-error' : '' }}">
                                          <div class="col-md-6">
                                          <input id="boodschappen" type="checkbox" class="form-control"  name="boodschappen" value="{{ old('boodschappen') }}" autofocus>
                                            Boodschappen<hr><input id="klusjes" type="checkbox" class="form-control"  name="klusjes" value="{{ old('klusjes') }}" autofocus>
                                          Klusjes<hr><input id="zorg" type="checkbox" class="form-control"  name="zorg" value="{{ old('zorg') }}" autofocus>
                                          Zorg<hr><input id="gezelschap" type="checkbox" class="form-control"  name="gezelschap" value="{{ old('gezelschap') }}" autofocus> Gezelschap<hr>

                                                      @if ($errors->has('zipcode'))
                                                          <span class="help-block">
                                                                <strong>{{ $errors->first('zipcode') }}</strong>
                                                              </span>
                                                          @endif
                                                      </div>
                                                  </div>

                        </div>
</div>
                        <div class="agileits-row2 w3ls-formrow2">
                          <input type="checkbox" id="brand2" value="">
                          <label for="brand2"><span></span>I accept the terms of Use</label>
                        </div>
                        <input type="submit" value="SUBMIT">


                    </form>
                  </div>
                </div>
              </div>
                </div>
            </div>
        </div>
    </div>
</div>
