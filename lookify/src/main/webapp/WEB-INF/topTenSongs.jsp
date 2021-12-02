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

	<h1 class="m-auto w-50 p-3">Top Ten Songs</h1>
	<p><a class="m-auto w-50 p-3" href="/dashboard">Dashboard</a></p>
	
		<table >
            <tbody class="table table-bordered">
				<c:forEach var="song" items="${songs}">
                <tr>
                    <th scope="row"></th>
                    <td>${song.rating} - </td>
                    <td><a href="songs/${song.id}">${song.title} </a></td>
                    <td>${song.artist}</td>
				</c:forEach>

            </tbody>
        </table>


</body>
</html>