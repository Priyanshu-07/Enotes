<!-- Nav Bar Start -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand me-5" href="${pageContext.request.contextPath }/home"><i class="fa-solid fa-book-open-reader" style="color: #ffffff;"></i> E-Notes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath }/home"><i class="fa-solid fa-house" style="color:#ffffff"></i> Home</a>
        </li>
        <c:if test="${not empty user }">
	        <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath }/user/addnotes"> Add Notes</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath }/user/viewnotes">View Notes</a>
	        </li>
        </c:if>
      </ul>
      <form class="d-flex">
      <c:if test="${empty user }">
       <a href="register" class="btn btn-light me-2" type="submit">Register</a>
        <a href="login"class="btn btn-light me-2" type="submit">Login</a>
      </c:if>
      <c:if test="${not empty user }">
       <p class="text-white m-2"><i class="fa-solid fa-user"></i> ${user.fullname }</p>
        <a href="${pageContext.request.contextPath }/logout" class="btn btn-danger me-2" type="submit"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
      </c:if>
      </form>
    </div>
  </div>
</nav>


<!-- Nav Bar End -->