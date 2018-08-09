<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${not empty error || not empty logout}">
<footer class="footer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-1 text-center  bg-secondary ">
				<!--                    <span class="btn btn-warning align-middle hidepie" title="borrar mensaje">
                        <i class='fas fa-times-circle'></i>
                    </span>               -->
			</div>
			<div class="col-lg-10">
			<c:if test="${not empty error}">
			<p class='p-2 mb-1  text-danger '><i class='fas fa-times-circle ' ></i>&nbsp;&nbsp;" . ${error} . "</p>
			</c:if>
			<c:if test="${not empty logout}">
			<p class='p-2 mb-1  text-danger '><i class='fas fa-times-circle ' ></i>&nbsp;&nbsp;" . ${logout} . "</p>
			</c:if>
			</div>
			<div class="col-lg-1 text-center">
				<span class="btn btn-secondary align-middle hidepie"
					title="borrar mensaje"> <i class='fas fa-times-circle'></i>
				</span>
			</div>
		</div>
	</div>
</footer>
</c:if>
