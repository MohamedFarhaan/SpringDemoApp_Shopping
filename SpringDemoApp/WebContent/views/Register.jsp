<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <title>Register User</title>
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
	<script>
			function secretkeydisplay(role){
				if(role.value=="admin"){
					document.getElementById("secretkey").style.display = "block";
					document.getElementById("submitbutton").style.display = "none";
					document.getElementById("secretkeyerror").style.display = "block";
				}
				else{
					document.getElementById("secretkey").style.display = "none";
					document.getElementById("submitbutton").style.display = "block";
					document.getElementById("secretkeyerror").style.display = "none";
				}
			}
			function checkSKey(event){
				if(event.value==reverse(document.getElementById("uname").value)){
					document.getElementById("submitbutton").style.display = "block";
					document.getElementById("secretkeyerror").style.display = "none";
				}else{
					document.getElementById("submitbutton").style.display = "none";
					document.getElementById("secretkeyerror").style.display = "block";
				}
			}
			function reverse(str){
				  let reversed = "";    
				  for (var i = str.length - 1; i >= 0; i--){        
				    reversed += str[i];
				  }    
				return reversed;
			}
	</script>
	<nav class="navbar navbar-dark bg-dark justify-content-between">
		<div class="container">
		  <a href="/springannohiberweb" class="navbar-brand" >AmazonSpring</a>
		  <div class="form-inline">
		  	<div id="userNotSignedIn">
		  		<a href="login"><button class="btn btn-success">Login</button></a>
		  	</div>
		  </div>
		  </div>
		</nav><br><center>
		<div class="white-card-box">
		<h1 style="font-family: 'Oswald';">Register</h1>
		<form action="register" method="POST" >
			 	<div class="form-group">
				    <label for="uname">Username</label>
				    <input type="text" id="uname" name="uname" class="form-control" placeholder="Enter username" required="required"  />
			 	 </div><br>
			 	 <div class="form-group">
				    <label for="upass">Password</label>
				    <input type="password" name="upass" class="form-control" placeholder="Enter Password" required="required"  />
			 	 </div><br>
			 	 <div class="form-group">
			 	 	 <label for="address">Customer City</label>
			 	 	 <input type="text" name="address" class="form-control" placeholder="Enter City" required="required"  />
			 	 </div><br>
			 	 <div class="form-group">
			 	 	 <label for="role">Role</label>
			 	 	 <select  class="form-control"  name="role" required="required" placeholder="Click to Select a Role" onclick="secretkeydisplay(this)"  > 
				 	 	 <option value="user" >customer</option>
				 	 	 <option value="admin">admin</option>
					</select>
			 	 </div><br>
			 	 <div id="secretkey" style="display: none" class="form-group">
			 	 	 <label for="secret_key">Key(for admin registration only)</label>
			 	 	 <input type="password" oninput="checkSKey(this)" class="form-control" name="secret_key" placeholder="Admin Key"  /> 
			 	 </div><br>
			 	 <p id="secretkeyerror" style="color: red;display: none">Enter correct Secret Key</p>
			 	 <br><center>
					<button id="submitbutton" type="submit" class="btn btn-primary">Register</button>
				</center>
			</form>
	</div>
	</center>
</body>
</html>