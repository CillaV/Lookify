<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
	<title>Search</title>
</head>
<body>

	<form class="p-3" action="/search">
		<label>Songs by Artist: </label>
		<input type="text" name="artist" value="${artists}">
		<input class="btn btn-success btn-sm" type="submit" value="Search Artists">
		<!-- name removed from end of input - issue was causing "Search Artists to show up in search field with artist name -->
	</form>
	
	<a href="/dashboard">Dashboard</a>
	
		<table class="table border border-dark table-striped table-hover m-auto w-50 p-3">
		<thead>
			<tr>
				<th scope="col">Name</th>
				<th scope="col">Rating</th>
				<th scope="col">Actions</th>
		    </tr>
		</thead>
			<tbody>
			    <c:forEach var="song" items="${songs}">
			    <tr>
					<!-- c:out not needed for each time -->
					<td><a href="/songs/${song.id}">${song.title}</a></td>
					<td>${song.rating}</td>
					<td>
						<!-- how to include in url  -->
						<a href="/songs/${song.id}/delete">delete</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
	</table>


</body>
</html>