<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>    
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>dzien dobry na stronie</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="main">Main</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="loged">twoja strona</a></li>
      <li><a href="register">rejestacja</a></li>
      <li><a href="login">logowanie do projektu</a></li>
      <li><a href="logout">wyloguj</a></li>
    </ul>
  </div>
</nav>
<p>witaj ${loged.login}</p>

<c:if test="${not empty postList}">
<c:forEach var="post" items="${postList}">
<div class="container">
     <div class="row bs-callout bs-callout-primary">
                <div class="col col-md-1 col-sm-2">
                
                </div>
                <div class="col col-md-11 col-sm-10">
                <p><c:out value="${post.title}" /><br>
                  <h3 class="centered"></h3>
                  <h6><small>Dodane przez: <c:out value="${post.user.login}" />, 
                  Dnia: <fmt:formatDate value="${post.created}" pattern="dd/MM/YYYY"/></small></h6>
                  <p>${post.sum} </p>
                  <button><a href="<%=request.getContextPath() %>/vote/yes/${post.id}">do gore</a></button>   
                  <button><a href="<%=request.getContextPath() %>/vote/no/${post.id}">w dol</a></button></br>
                </div>
              </div>
              </div>
</c:forEach>
</c:if>

</body>
</html>