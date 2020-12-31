<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="ISO-8859-1">
<title>All inovices</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
        integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
        integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
        crossorigin="anonymous"></script>
    <style>
        .navbar {
            font-family: 'Oswald', sans-serif;
        }

        body {
            background: linear-gradient(to left, #00ff00 0%, #009933 100%);
        }

        .top-center-padding {
            text-align: center;
            margin-top: 125px;
            font-family: 'Oswald', sans-serif;
            font-size: 50px;
            text-shadow: 0px 0px 2px white;
        }

        .white-card-box {
            text-align: center;
            background-color: rgba(256, 256, 256, 0.8);
            margin-top: 25px;
            margin-right: 25%;
            margin-left: 25%;
            padding: 10px 30px;
            font-family: sans-serif;
            font-weight: 500;
            color: black;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, .4);
            border-radius: 25px;
        }

        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            /* Height of the footer */
            background: rgba(255, 255, 255, .4);
            box-shadow: 2px -2px 5px rgba(0, 0, 0, .2);
        }

        .footer-text {
            margin-top: 20px;
        }

        @media only screen and (max-width: 678px) {
            .white-card-box {
                text-align: center;
                background-color: rgba(256, 256, 256, 0.8);
                margin-top: 25px;
                margin-right: 10%;
                margin-left: 10%;
                padding: 10px 30px;
                font-family: sans-serif;
                font-weight: 500;
                color: black;
                box-shadow: 2px 2px 5px rgba(0, 0, 0, .4);
                border-radius: 25px;
            }

            .footer {
                bottom: 0;
                width: 100%;
                height: 60px;
                /* Height of the footer */
                background: rgba(255, 255, 255, .4);
                box-shadow: 2px -2px 5px rgba(0, 0, 0, .2);
            }
        }
    </style>
</head>
<body style="background-color: lightgrey;">
<nav class="navbar navbar-dark bg-dark justify-content-between">
		<div class="container">
		  <a href="/springannohiberweb" class="navbar-brand" >AmazonSpring</a>
		  <div class="form-inline">
		  	<div id="userNotSignedIn">
		  		<a href="logout"><button class="btn btn-danger">Logout</button></a>
		  	</div>
		  </div>
		  </div>
		</nav><br>
		<div class="container">
		<a href="admin" class="btn btn-secondary">Back</a>
		<center>
<h2><b>List of Invoices</b></h2>  
<h5>NO of Records found = <%= request.getAttribute("record") %></h5><br>
    <table class="table white-card-box">
        <tr>
            <th>Invoice No</th>
            <th>User Id</th>
            <th>User Name</th>
            <th>Total</th>
            <th>Date</th>
        </tr>
            <c:forEach items="${master}" var="iter">
            <tr>
            <th>${iter.invno}</th>
            <td>${iter.user.userid}</td>
            <td>${iter.user.username}</td>
            <td>${iter.total}</td>
            <td>${iter.date}</td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href = "xlsx" class="btn btn-info"> Download Invoice Report</a><br><br>
    </center>
    </div>
</body>
</html>