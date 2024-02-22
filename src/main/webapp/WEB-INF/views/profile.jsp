<%@include file="/WEB-INF/resources/components/jstluri.jsp" %>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/resources/components/links.jsp" %>
    <title>User Page</title>
  </head>
  <body>
    <%@include file="/WEB-INF/resources/components/navbar.jsp" %>
    <h2>User Login Successfully</h2>
    
    <h4>Welcome, ${user.fullname }</h4>  
    
  </body>
</html>