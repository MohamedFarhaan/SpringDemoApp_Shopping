<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add An Item</title>
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
<body  style="background-color: lightgrey;">
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
		<div class="container"><a href="admin" class="btn btn-secondary">Back</a></div>
		<div class="white-card-box" >
		
		<center>
			<form method="POST" action="add_item">
				<h1>Add Item</h1><br>
				<div class="form-group">
					Item Name : <input type="text" placeholder="Item Name"  class="form-control" name="itemdesc" required><br>
				</div>
				<div class="form-group">
					Category :  <input type="text" placeholder="Item Category" class="form-control" name="category" required><br>
				</div>
				<div class="form-group">
					 Unit :     <input type="text" placeholder="Item Unit" class="form-control" name = "unit" required><br>
				</div>
				<div class="form-group">
					 Price :    <input type = "number" placeholder="Item Price"  class="form-control" name = "price" required><br>
				</div>
				<button type="submit" class="btn btn-primary" value="Add item" >Add Item</button>
			</form>
		</center>
</div>
</body>
</html>