<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="es">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Panel de Control</title>

    <!-- favicon -->

    <link rel="apple-touch-icon" sizes="180x180"
          href="img/favicon/apple-touch-icon.png"/>
    <link rel="icon" type="image/png" sizes="32x32"
          href="img/favicon/favicon-32x32.png"/>
    <link rel="icon" type="image/png" sizes="16x16"
          href="img/favicon/favicon-16x16.png"/>
    <link rel="manifest" href="img/favicon/site.webmanifest"/>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/BootstrapCss/bootstrap.min.css"/>
    <script defer src="js/BootstrapJs/bootstrap.min.js"></script>

    <!-- Css -->

    <link rel="stylesheet" href="css/panel.css"/>

    <!-- Jquery -->

    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"></script>

    <!-- Js -->

    <script defer src="js/scriptPanel.js"></script>

</head>

<body>

<div class="loader-wrapper">
    <span class="loader"><span class="loader-inner"></span></span>
</div>

<div class="wrapper">
    <div class="cursor"></div>
    <!-- Sidebar  -->
    <nav id="sidebar"
         class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
         style="overflow: visible;">
        <div id="mCSB_1"
             class="mCustomScrollBox mCS-minimal mCSB_vertical mCSB_outside"
             style="max-height: none;" tabindex="0">
            <div id="mCSB_1_container"
                 class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
                 style="position: relative; top: 0; left: 0;" dir="ltr">
                <div class="sidebar-header">
                    <a class="logo" href="index.jsp">muy lejano <span
                            class="logo-span">PASS</span>
                    </a>
                </div>

                <ul class="list-unstyled components">
                    <p>Panel de control</p>
                    <li class="active"><a href="panelDeControl.do"
                    >Atracciones</a></li>
                    <li><a href="#">Tipos</a></li>
                    <li><a href="#">Promociones</a></li>
                    <li><a href="#">Usuarios</a></li>
                </ul>
            </div>
        </div>
        <div id="mCSB_1_scrollbar_vertical"
             class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal mCSB_scrollTools_vertical"
             style="display: none;">
            <div class="mCSB_draggerContainer">
                <div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
                     style="position: absolute; min-height: 50px; height: 0; top: 0;">
                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                </div>
                <div class="mCSB_draggerRail"></div>
            </div>
        </div>
    </nav>

    <!-- Page Content  -->
    <div id="content">
        <div class="modal" id="exampleModal" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog  modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <p class="modal-title pe-1" id="exampleModalLabel">Hola
                            Visitante!</p>
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="22"
                                   height="22" fill="currentColor" class="bi bi-person-fill"
                                   viewBox="0 0 16 16">
            <path
                    d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
          </svg></span>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="login" method="post">
                            <div class="ps-3 pe-3 mb-4">
                                <label for="username" class="form-label">Usuario</label> <input
                                    type="text" class="form-control" id="validationCustom01"
                                    aria-describedby="emailHelp">
                                <div id="emailHelp" class="form-text">ejemplo:
                                    LeonardoLinux
                                </div>
                            </div>
                            <div class="ps-3 pe-3 mb-1">
                                <label for="password" class="form-label">Contrase�a</label> <input
                                    type="password" class="form-control"
                                    id="exampleInputPassword1">
                            </div>
                            <div class="modal-footer pe-4">
                                <button type="submit" class="btn boton-iniciarS">Iniciar
                                    Sesi�n
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="contenedor">

                <section class="header" id="home">
                    <div class="container">
                        <nav class="navbar navbar-expand-lg navbar-light nav-sticky-hijo">
                            <div class="container-fluid">
                                <p class="logo">
                                    �Bienvenido,
                                    <c:out value="${user.nombre}"/>
                                    !
                                </p>
                                <button class="navbar-toggler nav-button" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#navbarScroll"
                                        aria-controls="navbarScroll" aria-expanded="false"
                                        aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"> </span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarScroll">
                                    <ul class="navbar-nav ms-auto my-5 my-lg-0 navbar-nav-scroll"
                                        style="-bs-scroll-height: 200px">
                                        <li class="nav-item"></li>
                                        <li class="nav-item dropdown"><a class="nav-link nav-a"
                                                                         href="#" id="navbarScrollingDropdown"
                                                                         role="button"
                                                                         data-bs-toggle="dropdown"
                                                                         aria-expanded="false"> M�s </a>
                                            <ul class="dropdown-menu dropdown-menu-end"
                                                aria-labelledby="navbarScrollingDropdown">
                                                <li><a class="dropdown-item" href="index.jsp">Home</a>
                                                </li>
                                                <li><a class="dropdown-item" href="itinerario.jsp">Itinerario</a>
                                                </li>
                                                <li>
                                                    <hr class="dropdown-divider"/>
                                                </li>
                                                <li><a type="button" href="logout"
                                                       class="dropdown-item">Cerrar Sesi�n</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>

                        <h2 class="titulo">Atracciones</h2>

                        <table class="table table-stripped table-hover">
                            <thead>
                            <tr>
                                <th>Atracci&oacute;n</th>
                                <th>Costo</th>
                                <th>Duraci&oacute;n</th>
                                <th>Cupo</th>
                                <th>Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${attractions}" var="attraction">
                                <tr <c:if test="${attraction.deleted}"> style="background-color: orangered"</c:if>>
                                    <td><strong>${attraction.nombre}</strong>
                                        <p><c:out value="${attraction.breveDescripcion}"></c:out></p></td>
                                    <td><c:out value="${attraction.costo}"></c:out></td>
                                    <td><c:out value="${attraction.duracion}"></c:out></td>
                                    <td><c:out value="${attraction.cupoMaximo}"></c:out></td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${attraction.deleted}">
                                            <a href="restore?nombre=${attraction.nombre}"
                                               class="btn boton-quiero-tabla" role="button"><i
                                                    class="bi bi-x-circle-fill">Alta</i></a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="delete?nombre=${attraction.nombre}"
                                                   class="btn boton-quiero-tabla" role="button"><i
                                                        class="bi bi-x-circle-fill">Baja</i></a>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
</body>

</html>

