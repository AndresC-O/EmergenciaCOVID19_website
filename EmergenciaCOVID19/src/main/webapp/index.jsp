<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="utf-8">
<title>Emergencia COVID-19</title>
<link rel="icon" href="Imagenes/virus.ico">
<link rel="stylesheet" href="Styles/style_index.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
</head>

<body class="bbody">
	<div class="PartSuperior">
		<img src="Imagenes/Logo_GOES2.png" alt="GobiernoDeElSalvador"
			class="Logo">
	</div>
	<br>
	<br>
	<br>
	<script type="text/javascript">
			$(document).ready(function () {		
				$("#btn").click(function (){
					
					var caja = $("#duip").val();
					
					$.post('ControllerBeneficiario', {
						//Envio de datos a js
						caja
					}, function (response) {
						var modificaH = document.getElementById('mod');		
						
						try{
							console.log(response);
							modificaH.innerHTML = JSON.parse(response) + ", eres beneficiario de los $300.00";
							/*let datos = JSON.parse(response);
							for(item of datos){
								
							}	*/
						}
						catch(err){
							modificaH.innerHTML = "No eres beneficiario de los $300.00";
						}
					});
				});
			});
		</script>
	<p class="pintro">
		<strong> Consulta quién de tú familia es beneficiario del
			apoyo <br>económico para alimentación en la emergencia
		</strong>
	</p>
	<p class="pcovid">
		<strong> COVID-19 </strong>
	</p>
	<br>
	<br>

	<center>
		<div class="allinputs">
			<input type="text" name="dui" id="duip"
				placeholder="Ingresa tú número de DUI 00000000-0" class="field"
				required> <input type="submit" value="CONSULTAR"
				class="consultar" id="btn" data-bs-toggle="modal"
				data-bs-target="#exampleModal">
		</div>
	</center>

	<br>
	<br>
	<br>
	<p class="poutro">
		<strong> El apoyo económico brindado por el Gobierno de El
			Salvador está dirigido a personas afectadas por la pandemia COVID-19.
			Dicho beneficio <br>corresponde a $300.00 por vivienda.
		</strong>
	</p>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Consulta DUI</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h1 id="mod"></h1>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</body>

</html>