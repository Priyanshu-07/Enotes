<%@include file="/WEB-INF/resources/components/jstluri.jsp" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/resources/components/links.jsp" %>
    <title>Login Page</title>
  </head>
  <body style="background-color:#F7F7F7">
    <%@include file="/WEB-INF/resources/components/navbar.jsp" %>
    <div class="container mt-5">
    	<div class="row">
    		<div class="col-md-6 offset-md-3">
    			<div class="card">
    				<div class="card-header text-center">
    					<h1>Login Page</h1>
    					<c:if test="${not empty msg}">
							<p id="msge" class="fs-4 fw-bold text-danger">${msg }</p>
					    	<c:remove var="msg"/>
						</c:if>
    				</div>
    				<div class="card-body">
    					<form action="loginuser" method="post">
    						<div class="mb-3">
    							<label for="email">Enter Your Email:</label>
    							<input type="text" id="email" for="email" name="email" placeholder="email@domain" class="form-control"/>
    						</div>
    						<div class="mb-3">
    							<label for="password">Enter Your Password:</label>
    							<input type="text" id="password" for="password" name="password" placeholder="password" class="form-control"/>
    						</div>
    						<button class="btn btn-dark col-md-12" type="submit">Submit</button>
    					</form>
    				</div>
    				<div class="card-footer text-center">
    					<p class="fs-6">If you don't have an account. <a href="register" class="text-decoration-none ">Register</a></p>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    
	<%@include file="/WEB-INF/resources/components/footer.jsp" %>
	    	<script type="text/javascript">
	// Function to hide the success message after 3 seconds
    setTimeout(function() {
        var successMessage = document.getElementById('msge');
        if (successMessage) {
            successMessage.style.display = 'none';
        }
    }, 3000); // 3000 milliseconds = 3 seconds
	</script>  
  </body>
</html>