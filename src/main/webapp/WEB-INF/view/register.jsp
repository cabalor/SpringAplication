<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">Rejestracja</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="main">Home</a></li>
      <li><a href="login">logowanie do projektu</a></li>
    </ul>
  </div>
</nav>

<div class="container">
<form:form modelAttribute="user" method="post" class="form-horizontal">
<form:errors path="*"/>
<div class="form-group">
	<div class="form-group">
	<div class="col-sm-5">
    <form:label for="firstname" path="firstName">First Name</form:label>
    <form:input class="form-control" id="firstname" path="firstName" placeholder="enetr first name"/>
    </div>
  </div>
<div class="form-group">
	<div class="col-sm-5">
    <form:label for="lastname" path="lastName">Last Name</form:label>
    <form:input path="lastName" class="form-control" id="lastname" placeholder="enetr last name"/>
    </div>
  </div>
<div class="form-group">
	<div class="col-sm-5">
    <form:label path="login" for="login">Login</form:label>
    <form:input path="login" class="form-control" id="login" aria-describedby="emailHelp" placeholder="login"/>
    </div>
  </div>
  <div class="form-group">
  <div class="col-sm-5">
    <form:label path="email" for="exampleInputEmail1">Email address</form:label>
    <form:input path="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
  </div>
  <div class="form-group">
  	<div class="col-sm-5">
    <form:label path="password" for="exampleInputPassword1">Password</form:label>
    <form:input path="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"/>
    </div>
  </div>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</div>



<%-- <form:form modelAttribute="user" method="post">
<form:errors path="*"/>
  <div class="form-group">
    <form:label path="firstName">First Name</form:label>
	<form:input path="firstName"/>
  </div>
  <div class="form-group">
    <form:label path="lastName">Last Name</form:label>
	<form:input path="lastName"/>
  </div>
  <div class="form-group">
    <form:label path="login">login</form:label>
	<form:input path="login"/>
  </div>
  <div class="form-group">
    <form:label path="password">password</form:label>
	<form:input type="password" path="password"/>
  </div>
  <div class="form-group">
    <form:label path="email">email</form:label>
	<form:input type="email" path="email"/>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form:form> --%>

</body>
</html>