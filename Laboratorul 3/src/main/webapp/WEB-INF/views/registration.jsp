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

    <title>Inregistrare utilizator</title>

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

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Inregistrare</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="nume">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="nume" class="form-control" placeholder="Nume"
                            autofocus="true"></form:input>
                <form:errors path="nume"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="prenume">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="prenume" class="form-control" placeholder="Prenume"
                            autofocus="true"></form:input>
                <form:errors path="prenume"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="IDNP">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="IDNP" class="form-control" placeholder="IDNP" autofocus="true" />
                <form:errors path="IDNP" />
            </div>
        </spring:bind>

        <select id="Raion" name="ListaRaioanelor">
            <option value="Chisinau">Chisinau</option>
            <option value="Balti">Hincesti</option>
            <option value="Orhei">Orhei</option>
            <option value="Rascani">Rascani</option>
            <option value="Straseni">Straseni</option>
            <option value="Drochia">Drochia</option>
            <option value="Edinet">Edinet</option>
        </select>
        <select id="Localitate" name="ListaLocalitati" >
            <option value="Chisinau">Hincesti</option>
            <option value="Balti">Horjesti</option>
            <option value="Orhei">Negrea</option>
            <option value="Rascani">Mingir</option>
            <option value="Straseni">Carpineni</option>
            <option value="Drochia">Sofia</option>
            <option value="Edinet">Voinescu</option>
        </select>

        <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="email" class="form-control" placeholder="Email"
                            autofocus="true"></form:input>
                <form:errors path="email"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Parola"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirmati parola"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>
        <input type="checkbox">Termeni si conditii
        <button class="btn btn-lg btn-primary btn-block" type="submit">Creaza</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
