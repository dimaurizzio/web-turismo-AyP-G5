<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Itinerario</title>

<!-- favicon -->

<link rel="apple-touch-icon" sizes="180x180"
	href="img/favicon/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32"
	href="img/favicon/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16"
	href="img/favicon/favicon-16x16.png" />
<link rel="manifest" href="img/favicon/site.webmanifest" />

<!-- Bootstrap -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />

<!-- Css -->

<link rel="stylesheet" href="css\main.css" />

<link rel="stylesheet" type="text/css" href="css\GlideCss\glider.css">

<!-- Js Bootstrap -->

<script defer
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<script defer src="js\GlideJs\glider.js"></script>
<script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script defer src="js\indexJs\script.js"></script>

<script type="text/javascript" defer
	src="js\itinerarioJs\HTML2PDF\html2pdf.bundle.min.js"></script>
<script type="text/javascript" defer src="js\itinerarioJs\HTML2PDF\descargarPDF.js"></script>

<script type="text/javascript" defer src="js\itinerarioJs\acordionJs\scriptMostrarAccordion.js"></script>
<script type="text/javascript" defer src="js\itinerarioJs\acordionJs\scriptMostrarLista.js"></script>

<script type="text/javascript" defer src="js\itinerarioJs\climaJs\clima.js"></script>
<script type="text/javascript" defer src="js\itinerarioJs\climaJs\hora.js"></script>


</head>

<body>
	<div class="loader-wrapper">
		<span class="loader"><span class="loader-inner"></span></span>
	</div>

	<div class="container-fluid">
				<div class="container viewport">
					<nav class="navbar navbar-expand-lg navbar-light ">
						<div class="container-fluid">
							<a class="logo" href="index.do">muy lejano <span
								class="logo-span">PASS</span>
							</a>

							<button class="navbar-toggler nav-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#navbarScroll"
								aria-controls="navbarScroll" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"> </span>
							</button>
							<div class="collapse navbar-collapse" id="navbarScroll">
								<ul class="navbar-nav ms-auto my-5 my-lg-0 navbar-nav-scroll"
									style="-bs-scroll-height: 200px;">
									<li class="nav-item">
										<c:choose>
										<c:when test="${user.nombre != null}">
									<li><a type="button" href="logout"
										   class="iniciar-sesion">Cerrar Sesión</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="iniciar-sesion"
																aria-current="page" href="#" data-bs-toggle="modal"
																data-bs-target="#exampleModal">Iniciar Sesión</a></li>
									</c:otherwise>
									</c:choose>
									<li class="nav-item"><a class="nav-link nav-a"
										href="nosotros.jsp">Nosotros</a></li>
									<c:choose>
									<c:when test="${user.admin}">
										<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle nav-a" href="#"
										id="navbarScrollingDropdown" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> Más </a>
										<ul class="dropdown-menu"
											aria-labelledby="navbarScrollingDropdown">
											<li><a class="dropdown-item" href="panelDeControl.do">Alta
													y baja</a></li>
										</ul></li>
									</c:when>
									</c:choose>
									
								</ul>
							</div>
						</div>
					</nav>
					
					<div id="containergeneral-estilosclima container"
							class="container">
							<div id="contenedor-clima" class="row">
								<div id="caja1" class="col-3">
									<p id="ubicacion"></p>
									<img id="icono-animado" src='' alt="" height="128" width="128">
								</div>
								<div id="caja2" class="col-3">
									<p id="temperatura-valor"></p>
									<p id="temperatura-descripcion"></p>
								</div>
								<div id="caja3" class="col-3">
									<p>Velocidad del viento</p>
									<p id="viento-velocidad"></p>
								</div>
								<div id="caja4" class="col-3">
									<p>Hora</p>
									<p id="hora"></p>
								</div>
							</div>
						</div>
					
					<div class="itinerario">
						<p class="titulo-itinerario">Su itinerario</p>
					</div>

					<div class="accordion accordion-flush" id="accordionFlushExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="false" aria-controls="flush-collapseOne">
									<div class="accordion-data row">
										<div class="col-6 nombre-atraccion">
											<p>Nombre de la actividad que compró el usuario (Por ej:
												El Calabozo)</p>
										</div>
										<div class="col-3 clock-in-accordion">
											<img class="clock" src="img\clock.svg" /> Duración
										</div>
										<div class="col-3 coin-in-accordion">
											<img class="coin" src="img\coin.svg" /> Costo
										</div>
									</div>
								</button>
							</h2>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="container">
									<div class="row">
										<div class="col-12">
											<div class="accordion-body descripcion-accordion">Descripción
												de la atracción</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<c:forEach items="${itinerary}" var="itinerary">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingThree">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
									aria-expanded="false" aria-controls="flush-collapseThree">
									<div class="accordion-data row">
										<div class="col-6 nombre-atraccion">
											<p>${itinerary.nombre}</p>
										</div>
										<div class="col-3 clock-in-accordion">
											<img class="clock" src="img\clock.svg" /> ${itinerary.duracion} hora
										</div>
										<div class="col-3 coin-in-accordion">
											<img class="coin" src="img\coin.svg" /> ${itinerary.costo} monedas
										</div>
									</div>
								</button>
							</h2>
							<div id="flush-collapseThree" class="accordion-collapse collapse"
								aria-labelledby="flush-headingThree"
								data-bs-parent="#accordionFlushExample">
								<div class="container">
									<div class="row">
										<div class="col-12">
											<div class="accordion-body descripcion-accordion">${itinerary.breveDescripcion}</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						<button class="btn boton-destinos" id="btnCrearPdf">Descargar</button>
					</div>
				</div>
			</div>
		<footer>
		
		<div class="footer"></div>
		
		</footer>
	

	


	

</body>
</html>