<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id="header">
    <div class="container">
        <div class="row ">
            <div class="col-lg-7"><img src="/gesto/resources/img/logo.png"></div>
            <div class="col-lg-1">
               
                        <a href="/gesto/home" class="btn btn-info ">
                            <i class="fas fa-home"></i>  
                        </a>
            </div>
                <div  class="col-lg-4">
                    <span style="float:right">
                        <span class="user"><i class="fas fa-user"></i>   <sec:authentication property="principal.username" /></span>
                    <a href="login?logout=true" class="btn btn-info ">
                        <i class="fas fa-power-off"></i> Off 
                    </a>
                    </span>
                    
                </div>

            </div>

        </div>





    </div>
</div>


