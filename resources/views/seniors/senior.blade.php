@extends('layouts.app')

@section('content')
<style>
.namefield {
	  font-size: 12pt;
    float:left;
    width:250px; }
#fieldspace {
    width:250px;
    height:2px;	}
</style>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
            <br /><br /><div class="h2">Senior scherm</div><br />

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('senior') }}">
                        {{ csrf_field() }}
                       
<span class='namefield'>Senior naam</span>
<input type='text' size='46' name='klantnaam' value='$row[klantnaam]' />
<div id='fieldspace'></div>
<span class='namefield'>Achternaam</span>
<input type='text' size='46' maxlength='40' name='achternaam' value='$row[achternaam]' />
<div id='fieldspace'></div>
<span class='namefield'>Adres</span>
<input type='text' size='46' maxlength='40' name='adres' value='$row[adres]' />
<div id='fieldspace'></div>
<span class='namefield'>Postcode</span>
<input type='text' size='46' maxlength='7' name='postcode' value='$row[postcode]' />
<div id='fieldspace'></div>
<span class='namefield'>Woonplaats</span>
<input type='text' size='46' maxlength='40' name='woonplaats' value='$row[woonplaats]' />
<div id='fieldspace'></div>
<span class='namefield'>Telefoonnummer</span>
<input type='text' size='46' maxlength='10' name='telefoon' value='$row[telefoonnummer]' />
<div id='fieldspace'></div><div id='fieldspace'></div>   
<div id='fieldspace'></div><div id='fieldspace'></div>
_END;
		echo "<a href='#' class='button'>Senior aanmaken</a>";
		echo '<button type="button" class="button" onclick="sluiten();">Sluiten</button></form></div>';


 <!--                       <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Login
                                </button>

                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    Forgot Your Password?
                                </a>
                            </div>
                        </div> -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
