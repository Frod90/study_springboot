<%@ page import="java.util.HashMap, java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>

<body>

<!-- Menu -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Logo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/joinForm">joinForm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<!-- Main Content -->
<div class="container mt-4">
    <div class="row">
        <div class="col-md-8">

            <h2>Table</h2>
            <table class="table">
                <thead>
                <tr>
                    <th>회사이름</th>
                    <th>자동차이름</th>
                    <th>연식</th>
                    <th>옵션 갯수</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody id="carTableBody">
                <%
                    HashMap resultMap = (HashMap)request.getAttribute("result");
                    ArrayList resultList = (ArrayList)resultMap.get("resultList");
                    for (int i = 0; i < resultList.size(); i = i + 1) {
                        HashMap record = (HashMap)resultList.get(i);
                %>

                <tr>
                    <td><%= record.get("company_name") %>
                    </td>
                    <td><%= record.get("car_name") %>
                    </td>
                    <td><%= record.get("year") %>
                    </td>
                    <td><%= record.get("option_count") %>
                    </td>
                    <td>
                        <button formaction="/carInfor/deleteAndSelectSearch" formmethod="post">Del</button>
                    </td>
                </tr>

                <%
                    }
                %>
                <!-- Empty -->
                </tbody>
            </table>

        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-4 mt-4">
    <div class="container">
        <p>&copy; 2023 Your Website. All Rights Reserved.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>