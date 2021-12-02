<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Details</title>
</head>
<body>

	<a href="/dashboard">Dashboard</a>
	
	<table>
            <tbody>

                <tr>
                    <th scope="row">Title:</th>
                    <td>${song.title}</td>
                </tr>

                <tr>
                    <th scope="row">Artist:</th>
                    <td>${song.artist}</td>
                </tr>

                <tr>
                    <th scope="row">Rating (1-10):</th>
                    <td>${song.rating}</td>
                </tr>
            </tbody>
        </table>
	
	<a href="/songs/${id}/delete">Delete</a>


</body>
</html>