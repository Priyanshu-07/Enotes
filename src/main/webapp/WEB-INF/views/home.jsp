<%@include file="/WEB-INF/resources/components/jstluri.jsp" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <%@include file="/WEB-INF/resources/components/links.jsp" %>
  </head>
  <body>
	<%@include file="/WEB-INF/resources/components/navbar.jsp" %>
	<div class="cotainer-fluid m-0 p-0 cd">
		<img alt="Notes Cover Page" src="<c:url value="/resources/images/cover.jpg"/>" width="100%" height="100%"/>
	</div>
	
	<%@include file="/WEB-INF/resources/components/footer.jsp" %>
  </body>
</html>