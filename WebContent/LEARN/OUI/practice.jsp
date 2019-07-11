<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>jQuery</title>
    <style>
      div {
        margin: auto;
        width: 500px;
        height: 2000px;
        border: 1px solid #bcbcbc;
      }
      a.top {
        position: fixed;
        left: 50%;
        bottom: 50px;
        display: none;
      }
    </style>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
      $( document ).ready( function() {
        $( window ).scroll( function() {
          if ( $( this ).scrollTop() > 200 ) {
            $( '.top' ).fadeIn();
          } else {
            $( '.top' ).fadeOut();
          }
        } );
        $( '.top' ).click( function() {
          $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
          return false;
        } );
      } );
    </script>
  </head>
  <body>
    <div></div>
		<a href="#" class="top">Top</a>
  </body>
</html>