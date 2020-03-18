<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an registration</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="programareForm" class="form-signin">
        <h2 class="form-signin-heading">Programare la examen</h2>

        <select id="Localitate" name="ListaLocalitatilor">
            <option value="Chisinau">Examen teoretic</option>
            <option value="Balti">Examen practic.Categoria A</option>
            <option value="Orhei">Examen practic.Categoria B</option>
            <option value="Rascani">Examen practic.Categoria C</option>
            <option value="Straseni">Examen practic.Categoria D</option>
        </select>
        <spring:bind path="numarScolarizare">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="numarScolarizare" class="form-control" placeholder="Numarul de scolarizare"
                            autofocus="true"></form:input>
                <form:errors path="numarScolarizare"></form:errors>
            </div>
        </spring:bind>

        <select id="Localitate" name="ListaLocalitatilor">
            <option value="Chisinau">Chisinau</option>
            <option value="Balti">Balti</option>
            <option value="Orhei">Orhei</option>
            <option value="Rascani">Rascani</option>
            <option value="Straseni">Straseni</option>
            <option value="Drochia">Drochia</option>
            <option value="Edinet">Edinet</option>
        </select>

        <select id="Localitate" name="ListaLocalitatilor">
            <option value="Chisinau">20/06/2020</option>
            <option value="Balti">21/06/2020</option>
            <option value="Orhei">25/06/2020</option>
        </select>

        <select id="Ora" name="Ora" >
            <option value="10:00">10:00</option>
            <option value="11:30">11:30</option>
            <option value="13:00">13:00</option>
            <option value="14:30">14:30</option>
        </select>


        <button class="btn btn-lg btn-primary btn-block" type="submit">Programeaza</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
