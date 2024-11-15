<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/epn.png">
  <title>Actualizar Ruta</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/indexRegAct.css">
</head>
<body>


<div class="container">

  <div class="button-container">
    <a class="button" href="${pageContext.request.contextPath}/GestionServlet?action=gestionRutas">Volver a la lista de Rutas</a>
  </div>

  <h1>Actualizar Ruta</h1>

  <form class="styled-form" action="${pageContext.request.contextPath}/GestionServlet?action=actualizarRuta" method="post">
    <input type="hidden" name="rutaId" value="${ruta.id}" />

    <label for="origen">Origen:</label><br/>
    <input type="text" id="origen" name="origen" value="${ruta.origen}" required /><br/>

    <label for="destino">Destino:</label><br/>
    <input type="text" id="destino" name="destino" value="${ruta.destino}" required /><br/>

    <label for="calles">Selecciona Calles:</label><br/>
      <select name="calles" id="calles" multiple required>
        <c:forEach var="calle" items="${allCalles}">
          <option value="${calle.id}"
                  <c:if test="${selectedCalleIds.contains(calle.id)}">selected</c:if>
          >${calle.nombre}</option>
        </c:forEach>
      </select>
    <br/>

      <input class="button" type="submit" value="Actualizar Ruta" />
    </form>


</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script>
  $(document).ready(function() {
    $('#calles').select2({
      placeholder: "Selecciona calles",
      allowClear: true
    });
  });
</script>
</body>
</html>
