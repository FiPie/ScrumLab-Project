<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 03.01.19
  Time: 07:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>appRecipeDetails</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
          rel="stylesheet">
    <link href="<c:url value="style.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>
<header class="page-header">
    <nav class="navbar navbar-expand-lg justify-content-around">
        <a href="/HomeServlet" class="navbar-brand main-logo">
            Zaplanuj <span>Jedzonko</span>
        </a>
        <ul class="nav nounderline text-uppercase">
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href="/login">logowanie</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href="/register">rejestracja</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link" href="/aboutapp">o aplikacji</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="/app/recipe/list">Przepisy</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="/contact">Kontakt</a>
            </li>
        </ul>
    </nav>
</header>

<section class="mr-4 ml-4">
    <div class="row pt-4 pb-2">
        <i class="fas fa-users icon-users"></i>
        <h1>Przepisy naszych użytkowników:</h1>
        <hr>
        <div class="orange-line w-100"></div>
    </div>
</section>

<section class="width-medium text-color-darker">
    <div class="pb-2">
        <div class="border-dashed view-height w-100">
            <div class="mt-4 ml-4 mr-4">
                <div class="row border-bottom border-3">
                    <div class="col"><h3 class="color-header text-uppercase">Szczegóły przepisu</h3></div>
                    <div class="col d-flex justify-content-end mb-2">
                        <script>
                            document.write('<a href="' + document.referrer + '" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>');
                        </script>
                    </div>
                </div>

                <table class="table borderless">
                    <tbody>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Nazwa Przepisu</th>
                        <td class="col-7">
                            ${sessionScope.name}
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Opis przepisu</th>
                        <td class="col-7">${sessionScope.description}
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Przygotowanie (minuty)</th>
                        <td class="col-7">
                            ${sessionScope.preparationTime}
                        </td>
                    </tr>
                    </tbody>
                </table>

                <div class="row d-flex">
                    <div class="col-5 border-bottom border-3"><h3 class="text-uppercase">Sposób przygotowania</h3></div>
                    <div class="col-2"></div>
                    <div class="col-5 border-bottom border-3"><h3 class="text-uppercase">Składniki</h3></div>
                </div>
                <div class="row d-flex">
                    <div class="col-5 p-4">
                        <p>${sessionScope.preparation}</p>
                    </div>
                    <div class="col-2"></div>
                    <ul class="col-5 p-4 list-unstyled">
                        ${sessionScope.ingredients}
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="last-info-section padding-small">
    <div class="container">
        <div class="row">
            <div class="col">
                <h3 class="mb-4">Lorem ipsum dolor</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem. Aliquam erat
                    volutpat. Donec placerat nisl magna.</p>
            </div>
            <div class="col pl-4 ml-4">
                <h3 class="mb-4">Lorem ipsum dolor</h3>
                <ul class="container">
                    <li>consectetur adipiscing elit</li>
                    <li>sed do eiusmod tempor</li>
                    <li>incididunt ut labore</li>
                    <li>et dolore magna aliqua</li>
                </ul>
            </div>
            <div class="col">
                <h3 class="mb-4">Lorem ipsum dolor</h3>
                <div class="input-group mb-3">
                    <input type="text" class="form-control border-0 rounded-0" placeholder=""
                           aria-label="Recipient's username" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="input-group-text btn-color border-0 rounded-0" type="submit" id="basic-addon2"><a
                                href="/HomeServlet">Lorem</a></button>
                    </div>
                </div>
                <div class="container d-flex-row">
                    <a href="#">
                        <i class="fab fa-facebook-square mr-4 icon-social"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-twitter-square mr-4 icon-social"></i>

                    </a>
                    <a href="#">
                        <i class="fab fa-instagram icon-social"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer-section pt-3 pb-3">
    <div class="container text-center">
        <h5 class="text-light">Copyright <span class="footer-text-color">ZaplanujJedzonko.pl</span></h5>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>
