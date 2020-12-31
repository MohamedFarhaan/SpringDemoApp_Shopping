<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Menu</title>
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
            height: 90%;
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
<center>
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
			<div class="row">
			    <div class="col-sm ">
			    	<div class="card white-card-box"  style="width: 18rem;">
					  <img class="card-img-top" src="https://media.giphy.com/media/husHwKYXyfk5tbGdqy/giphy.gif" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title"><b>Add an Item</b></h5>
					    <p class="card-text">The reality is that we are all economists. We all deal with scarcity as we make choices and calculate how to ration various items and resources that we consume, produce and utilize.</p>
					    <center><a href="add_item" class="btn btn-primary">Add Item</a></center>
					  </div>
					  <br>
					</div>
			    </div><br>
			    <div class="col-sm">
			    	<div class="card white-card-box" style="width: 18rem;">
					  <img class="card-img-top" src="https://media.giphy.com/media/l1Lce5Df3DcSY0s8w/giphy.gif" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title"><b>Inventory</b></h5>
					    <p class="card-text">We want to turn our inventory faster than our people.</p>
					    <center><a href="all_item" class="btn btn-primary">See All Items</a></center>
					  </div>
					  <br>
					</div>
			    </div><br>
			    <div class="col-sm">
			    	<div class="card white-card-box" style="width: 18rem;">
					  <img class="card-img-top" src="https://media.giphy.com/media/d3MM9va3BHH94eLm/giphy.gif" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title"><b>Invoices</b></h5>
					    <p class="card-text">Commercial art is traditionally delivered to a client in a brown-paper bag with an invoice stapled to the outside.</p>
					    <center><a href="all_invoice" class="btn btn-primary">See All Invoices</a></center>
					  </div>
					  <br>
					</div>
			    </div><br>
			    <div class="col-sm">
			    	<div class="card white-card-box" style="width: 18rem;">
					  <img class="card-img-top" src="https://media.giphy.com/media/gfTPmNCC7PKHevwp25/giphy.gif" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title"><b>Invoices Between Dates</b></h5>
					    <p class="card-text">Running your own business can be the loneliest job in the world. You are the MD, answer the phone and make tea, handle the invoices and have to make payments on time.</p>
					    <center><a href="invoice_between_dates" class="btn btn-primary">See invoice(s) between Dates</a></center>
					  </div>
					  <br>
					</div>
			    </div>
			  </div>
		</div>
	</center>
</body>
</html>