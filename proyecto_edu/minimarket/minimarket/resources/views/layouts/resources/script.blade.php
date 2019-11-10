
@if($resourceScript == 'general')
<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 3 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/jquery/dist/jquery.min.js') }}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('AdminLTE-2.4.5/dist/js/adminlte.min.js') }}"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
Both of these plugins are recommended to enhance the
user experience. -->
@endif


@if($resourceScript == 'login')
<!-- jQuery 3 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/jquery/dist/jquery.min.js') }}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<!-- iCheck -->
<script src="{{ asset('AdminLTE-2.4.5/plugins/iCheck/icheck.min.js') }}"></script>
<!-- Rut Chileno -->
<script src="{{ asset('js/jquery.rut.chileno.min.js') }}"></script>
<script>
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' /* optional */
		});
	});
</script>

@endif

@if($resourceScript == 'userCreate')
<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 3 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/jquery/dist/jquery.min.js') }}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('AdminLTE-2.4.5/dist/js/adminlte.min.js') }}"></script>
<!-- Select 2 -->
<script src="{{ asset('AdminLTE-2.4.5/plugins/select2/dist/js/select2.min.js') }}"></script>
<!-- Validacion RUT -->
<script src="{{ asset('js/jquery.rut.chileno.min.js') }}"></script>
<!-- Bootstrap-Notify -->
<script type="text/javascript" src="{{ asset('AdminLTE-2.4.5/plugins/bootstrap-notify-master/bootstrap-notify.js') }}"></script>
<!-- blockUI -->
<script src="{{ asset('js/jquery.blockUI.js') }}"></script>
<!-- funciones genericas -->
<script src="{{ asset('js/generico.js') }}"></script>

<script>
	function unblockUI(){
		$.unblockUI();
	};
	$(document).ajaxStart(function() {
		blockUI();
	}).ajaxStop(function() {
		unblockUI();
	});
</script>
@endif

@if($resourceScript == 'userIndex')
<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 3 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/jquery/dist/jquery.min.js') }}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ asset('AdminLTE-2.4.5/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('AdminLTE-2.4.5/dist/js/adminlte.min.js') }}"></script>
<!-- DataTables -->
<script type="text/javascript" src="{{ asset('AdminLTE-2.4.5/plugins/DataTables/datatables.min.js') }}"></script>
<!-- Bootstrap-Notify -->
<script type="text/javascript" src="{{ asset('AdminLTE-2.4.5/plugins/bootstrap-notify-master/bootstrap-notify.js') }}"></script>
<!-- blockUI -->
<script src="{{ asset('js/jquery.blockUI.js') }}"></script>
<!-- funciones genericas -->
<script src="{{ asset('js/generico.js') }}"></script>
<!-- Activa y desactiva pantalla de carga -->
<script>
	$(document).ajaxStart(function() {
		blockUI();
	}).ajaxStop(function() {
		unblockUI();
	});
</script>

@endif

@include('layouts.partials.notify')

<!-- AGREGAR NUEVOS RECURSOS DE SCRIPT ACA (ASIGNARLE UN VALOR A LA VARIABLE $resources Y ASIGNARSELA EN EL CONTROLADOR-->

@yield('script')

