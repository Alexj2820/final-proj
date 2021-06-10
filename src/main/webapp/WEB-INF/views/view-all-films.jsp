<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All films</title>

<style type="text/css">
.flex-box {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

table, th, td {
    border: 1px solid black;
}

a {
    text-decoration: none;
    color: black;
}

a:hover {
    color: white;
}

.button:hover {
    background: red;
}
</style>

</head>
<body>
    <div class = "flex-box">
        <header><h1>View All Films</h1></header>
        <h2><a href="/spring-mvc/films/viewFilmForm" class = "button">Add film</a></h2>
        <section>
            <table>
                <tr>
                    <th>Film Id</th>
                    <th>Film Name</th>
                    <th>Film Genre</th>
                    <th>Film Year</th>
                </tr>
                <c:forEach var = "film" items = "${films}" >
                    <tr>
                        <td>${film.id}</td>
                        <td>${film.name}</td>
                        <td>${film.genre}</td>
                        <td>${film.year}</td>
                        <td><a href="/spring-mvc/films/remove-film/${film.id}" class = "button">Remove</a></td>
                        <td><a href="/spring-mvc/films/updateFilm?id=${film.id}" class = "button">Update</a></td>
                    </tr>
                </c:forEach>
            </table>
        </section>
        <footer><h2>Powered by Spring Framework</h2></footer>
    </div>
</body>
</html>