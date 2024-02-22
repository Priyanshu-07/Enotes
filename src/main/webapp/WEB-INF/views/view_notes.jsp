<%@include file="/WEB-INF/resources/components/jstluri.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View-Notes</title>
    <%@include file="/WEB-INF/resources/components/links.jsp" %>
  </head>
  <style>
   	.down {
    position: fixed;
    bottom: 0;
    width: 100%;

  }
  	
  </style>
<body>
	<%@include file="/WEB-INF/resources/components/navbar.jsp" %>
	
	<div class="container-fluid p-4">
				<h1 class="text-center">View All Notes</h1>
				<c:if test="${not empty msge}">
    					<p id="msge" class="fs-3 fw-bold text-success text-center">${msge }</p>
    					<c:remove var="msge"/>
    					</c:if>
		<div class="row">
		
		<c:forEach items="${lists }" var="list">
		
			<div class="col-md-8 offset-md-2 mt-2" >
				<div class="card">				
					<div class="card-body">
						<div class="text-center">
							<img alt="" src="<c:url value="/resources/images/topimg.png" />" width="40px" height="50px" />
						</div>
						<p>${list.title }</p>
						<p>${list.description }</p>
						<p>Publish Date: ${list.noteDate }</p>
						
						<div class="text-center">
							<a href="editnotes?id=${list.id }" class="btn btn-primary btn-sm">Edit</a>
							<a href="deleteNotes?id=${list.id }" class="btn btn-danger btn-sm">Delete</a>
						</div>
					</div>
				</div>
			</div>
			
			</c:forEach>
			
			
		</div>
	</div>
	
	
	<footer class="down">
	<%@include file="/WEB-INF/resources/components/footer.jsp" %>
	</footer>
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