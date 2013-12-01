
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>JSP Page</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">




                    <div class="panel panel-default">

                        <div class="panel-heading">
                            <div class="icon">
                                <i class="icon-2x icon-home"></i>
                            </div>
                            <h4>Local</h4>
                            <a class="minimize" href="#"></a>
                        </div>

                        <div class="panel-body">


                            <form id="localForm" action="<%=contextPath%>/adm/local/save" method="post" class="form-horizontal">


                                <input type="hidden" value="${local.id}" name="id">

                                <div class="control-group">
                                    <label class="control-label">Descripción</label>
                                    <div class="controls">
                                        <input type="text" name="descripcion" value="${local.descripcion}">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Dirección</label>
                                    <div class="controls">
                                        <input type="text" name="direccion" value="${local.direccion}">
                                    </div>
                                </div>



                                <div class="control-group">
                                    <label class="control-label">Teléfono</label>
                                    <div class="controls">
                                        <input type="text" name="telefono" value="${local.telefono}">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Estado</label>

                                    <div class="controls" >

                                        <select name="estado" value="${local.estado}">

                                            <c:if test="${local.estado == 1 or local.estado == null}">
                                                <option value="1" selected>Activo</option>
                                                <option value="0">Inactivo</option>
                                            </c:if>
                                            <c:if test="${local.estado == 0}">
                                                <option value="1">Activo</option>
                                                <option value="0"selected>Inactivo</option>
                                            </c:if>                                        


                                        </select>

                                    </div>

                                </div>


                                <div class="control-group">
                                    <div class="controls">
                                        <a class="btn" href="<%=contextPath%>/adm/local">Cancelar</a>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div> 


                            </form>



                        </div>   
                    </div>                

















                </div>
            </div>
            <hr>
        </div>

        <%@include file="/public/footer.jsp" %>

        <script>

            $("#localForm").validate({
                rules: {
                    descripcion: {
                        required: true,
                        minlength: 6
                    },
                    direccion: {
                        required: true,
                        minlength: 3
                    },
                    telefono: {
                        required: true,
                        digits: 2
                    },

                },
                messages: {
                    descripcion: {
                        required: "Por favor ingrese sus nombres",
                        minlength: "Mínimo 6 caracteres de longitud"
                    },
                    direccion: {
                        required: "Por favor ingrese su apellido paterno",
                        minlength: "Mínimo 3 caracteres de longitud"
                    }
                }
            });
        </script>



    </body>
</html>