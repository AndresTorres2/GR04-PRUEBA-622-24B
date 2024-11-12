<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/epn.png">
    <title>Registrar Conductor</title>
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
<h1>Registrar Conductor</h1>

<form action="${pageContext.request.contextPath}/GestionServlet?action=guardarConductor" method="post">
    <input type="hidden" name="action" value="registrarConductor" />

    <label for="nombre">Nombre:</label><br/>
    <input type="text" id="nombre" name="nombre" oninput="validarNombreApellido(this)" required/><br/><br/>

    <label for="apellido">Apellido:</label><br/>
    <input type="text" id="apellido" name="apellido" oninput="validarNombreApellido(this)" required/><br/><br/>

    <label for="email">Email:</label><br/>
    <input type="email" id="email" name="email" required/><br/><br/>

    <label for="contrasena">Contraseña:</label><br/>
    <input type="password" id="contrasena" name="contrasena" required/><br/><br/>

    <label for="telefono">Teléfono:</label><br/>
    <input type="text" id="telefono" name="telefono" oninput="validarTelefono(this)" required /><br/><br/>

    <input type="submit" value="Registrar Conductor" />
</form>

<a href="${pageContext.request.contextPath}/GestionServlet?action=gestionConductores">Volver a la lista de conductores</a>

</body>
</html>
