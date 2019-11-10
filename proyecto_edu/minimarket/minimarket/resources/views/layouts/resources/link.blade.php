
  @if($resourceLink == 'general')
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/font-awesome/css/font-awesome.min.css') }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/Ionicons/css/ionicons.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/dist/css/AdminLTE.min.css') }}">
  
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/dist/css/skins/_all-skins.min.css') }}">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="{{ asset('AdminLTE-2.4.5/plugins/DataTables/datatables.min.css') }}"/>
  <!-- Google Font -->
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  @endif

  @if($resourceLink == 'login')
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/font-awesome/css/font-awesome.min.css') }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/Ionicons/css/ionicons.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/dist/css/AdminLTE.min.css') }}">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/plugins/iCheck/square/blue.css') }}">
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  @endif



  <!-- AÑADIR NUEVOS RECURSOS DE CSS ACA (ASIGNARLE UN VALOR A LA VARIABLE $resources Y ASIGNARSELA EN EL CONTROLADOR -->


  @if($resourceLink == 'userIndex')
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/font-awesome/css/font-awesome.min.css') }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/Ionicons/css/ionicons.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/dist/css/AdminLTE.min.css') }}">
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/dist/css/skins/_all-skins.min.css') }}">
  <!-- Bootstrap-notify (animate.css) -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/plugins/bootstrap-notify-master/animate.css') }}">
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link rel="stylesheet" type="text/css" href="{{ asset('AdminLTE-2.4.5/plugins/DataTables/datatables.min.css') }}"/>
  @endif

  @if($resourceLink == 'userCreate')
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/font-awesome/css/font-awesome.min.css') }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/bower_components/Ionicons/css/ionicons.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/dist/css/AdminLTE.min.css') }}">
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/dist/css/skins/_all-skins.min.css') }}">
  <!-- Select 2 -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/plugins/select2/dist/css/select2.min.css') }}">
  <!-- Bootstrap-notify (animate.css) -->
  <link rel="stylesheet" href="{{ asset('AdminLTE-2.4.5/plugins/bootstrap-notify-master/animate.css') }}">
  <link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  
  @endif


