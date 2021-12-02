<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
	<title>Add Song</title>
</head>
<body>

	<a href="/dashboard">Dashboard</a>

	<form:form class="m-auto w-50 p-3" action="/songs/new" method="POST" modelAttribute="song">
	    <p class="m-auto w-50 p-3 d-flex justify-content-between">
	        <form:label path="title">Title: </form:label>
	        <form:errors path="title"/>
	        <form:input path="title"/>
	    </p>
	    <p class="m-auto w-50 p-3 d-flex justify-content-between">
	        <form:label path="artist">Artist: </form:label>
	        <form:errors path="artist"/>
	        <form:input path="artist"/>
	    </p>
	    <p class="m-auto w-50 p-3 d-flex justify-content-between">
	        <form:label path="rating">Rating (1-10)</form:label>
	        <form:errors path="rating"/>
	        <form:input type="number" min="1" max="10" path="rating"/>
	    </p>
	      
	    <input class ="btn btn-success btn-sm d-flex justify-content-sm-end" type="submit" value="Add Song"/>
	</form:form>  

</body>
</html>