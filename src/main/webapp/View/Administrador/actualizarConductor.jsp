<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/epn.png">
    <title>Actualizar Conductor</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/indexRegAct.css">
    <script type="text/javascript">
        function validarNombreApellido(input) {
            input.value = input.value.replace(/[^A-Za-zÁÉÍÓÚáéíóúñÑüÜ \n]/g, '');
        }

        function validarTelefono(input) {
            input.value = input.value.replace(/[^0-9]/g, '');
        }
    </script>
</head>
<body>
<h1>Actualizar Conductor</h1>

<form class="styled-form" action="${pageContext.request.contextPath}/GestionServlet?action=actualizarConductor" method="post">
    <input type="hidden" name="action" value="actualizarConductor" />
    <input type="hidden" name="conductorId" value="${conductor.id}" />

    <label for="nombre">Nombre:</label><br/>
    <input type="text" id="nombre" name="nombre" value="${conductor.nombre}" oninput="validarNombreApellido(this)" required/><br/>

    <label for="apellido">Apellido:</label><br/>
    <input type="text" id="apellido" name="apellido" value="${conductor.apellido}" oninput="validarNombreApellido(this)" required/><br/>

    <label for="email">Email:</label><br/>
    <input type="email" id="email" name="email" value="${conductor.email}" required/><br/>

    <label for="telefono">Teléfono:</label><br/>
    <input type="text" id="telefono" name="telefono" value="${conductor.phone}" oninput="validarTelefono(this)" required/><br/>

    <input class="button" type="submit" value="Actualizar Conductor" />
</form>

<div class="button-container">
    <a class="button" href="${pageContext.request.contextPath}/GestionServlet?action=gestionConductores">Volver a la lista de conductores</a>
</div>
</body>
</html>
