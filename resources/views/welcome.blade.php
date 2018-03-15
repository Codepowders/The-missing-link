<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link href="css/themissinglink.css" rel="stylesheet" type="text/css">

        <!-- Styles 
        /* AIzaSyAnmPaoxfofvPJ3z9W8tXQeO0J4EJezejU
        inloggegevens API-sleutel: AIzaSyAznzmRGq4L6dzx-TSB9d6kv3Bg3x9YS9A naam API-sleutel 1*/
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" type="text/javascript"></script>
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style> -->
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>
                        <a href="{{ route('register') }}">Register</a>
                    @endauth
                </div>
            @endif

            <div class="content">
<div class="header">
    <h2 class="header1">The Missing Link</h2>
</div>
<br /><br />
<div class="container1">
<button class="button button5"><span class="area">Nood</span></button>
<button class="button button5"><span class="area">Hulp</span></button>
<button class="button button5"><span class="area">Zorg</span></button>
<div><br />
<div class="container2">
<button class="button button5"><span class="area">Gezelschap</span></button>
<button class="button button5"><span class="area">Klussen</span></button>
<button class="button button5"><span class="area">Boodschappen</span></button>
</div>
<div class="footer">
<h2 class="header1">Always Under Construction!</h2>
</div>

                <!-- <div class="title m-b-md">
                    Hello Lieuwe!... beware of the Jorrits!!
                </div>

                <div class="links">
                    <a href="https://laravel.com/docs">Documentation</a>
                    <a href="https://laracasts.com">Laracasts</a>
                    <a href="https://laravel-news.com">News</a>
                    <a href="https://forge.laravel.com">Forge</a>
                    <a href="https://github.com/laravel/laravel">GitHub</a>
                </div> -->
            </div>
        </div>
    </body>
</html>
