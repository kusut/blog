<%inherit file="base.mako" />

<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="kusut">

    <link href="/css/boobstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
    <%include file="head.mako" />
  </head>

  <body>
    <div class="container-fluid">

      <div class="row-fluid">
	<div id="centre" class="span7">
	  <h1><a id="title" href="/">/</a></h1>
	</div>
      </div>

      <div class="row-fluid">
	<div id="centre" class="centre span7">
	  ${next.body()}
	</div>
      </div>

      <div class="row-fluid">
	<div id="centre" class="centre span7">
	  <%include file="footer.mako" />
	</div>
      </div>
    </body>
</html>
