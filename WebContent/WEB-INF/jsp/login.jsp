<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <jsp:include page="inc/head.jsp"/> 
        <title>GESTO</title>
    </head>
    <body>
        <div id='contenedor'>
			<jsp:include page="inc/cabecera_login.jsp"/> 

            <div class="container h-75 d-flex justify-content-center">
                <div class="jumbotron my-auto">
                    <form action="login" method="POST" method="post" class="form-horizontal">
                        <div class="form-group row align-middle ">
                          
                            <div class="col-lg-12">
                                <input type="text" class="form-control password" id="username"  name="username" placeholder="Usuario"  required="required">
                            </div>
                        </div>
                        <div class="form-group row align-middle ">
                            
                            <div class="col-lg-12">
                                <input type="password" class="form-control confpass" id="password"  name="password" placeholder="Password"  required="required">
                            </div>
                        </div>
                        <hr />
                        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
                        <div class="form-group row text-center">
                            <div class="col-lg-12">
                                <button name = "submit" id='submit' type="submit" class="btn btn-success">Entrar</button>
                            </div>

                        </div>

                    </form>

                </div>
            </div><!-- /.container -->

        </div>
       <jsp:include page="inc/pie.jsp"/>

    </body>
</html>
