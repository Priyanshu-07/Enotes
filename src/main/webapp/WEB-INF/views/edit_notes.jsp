<%@include file="/WEB-INF/resources/components/jstluri.jsp" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/resources/components/links.jsp" %>
    <title>Add-Notes</title>
  </head>
  <body style="background-color:#F7F7F7">
    <%@include file="/WEB-INF/resources/components/navbar.jsp" %>
    <div class="container mt-5">
    	<div class="row">
    		<div class="col-md-6 offset-md-3">
    			<div class="card">
    				<div class="card-header text-center">
    					<h1>Edit Your Notes</h1>
    				</div>
    				<div class="card-body">
    					<form action="updatenotes" method="post">
    						<div class="mb-3">
    							<label for="title">Enter Book Title:</label>
    							<input type="text" id="title" name="title" placeholder="Enter your book name..." class="form-control" value="${notes.title }" />
    						</div>
    						<div class="mb-3">
    							<label for="description">Enter Book Description:</label>
    							<textarea rows="5" cols="" name="description" placeholder="Book Description..." class="form-control">${notes.description }</textarea>
    						</div>
    						<input type="hidden" name="id" value="${notes.id }" />
    						<button class="btn btn-dark col-md-12">Update</button>
    					</form>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    
	<%@include file="/WEB-INF/resources/components/footer.jsp" %>
  </body>
</html>