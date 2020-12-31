<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Index Page</title>
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
            background-color: rgba(255, 255, 255, .4);
            margin-top: 50px;
            margin-right: 20px;
            padding: 10px 30px;
            font-family: sans-serif;
            font-weight: 500;
            color: black;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, .4);
            border-radius: 25px;
        }

        .white-card-box:hover {
            background-color: rgba(12, 63, 230, .2);
            color: white;
        }
        footer {
            position: absolute;
            bottom:0;
            width:100%;
            height:60px;   /* Height of the footer */
            background: rgba(255, 255, 255, .4);
            box-shadow: 2px -2px 5px rgba(0, 0, 0, .2);
        }
        .footer-text{
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-dark bg-dark justify-content-between">
        <div class="container">
            <a href="#" class="navbar-brand">AmazonSpring</a>
        </div>
        </div>
    </nav>
    <div class="container">
        <div class="top-center-padding">
            <h1>Welcome to Amazon <span style="color: white">Spring</span> Shopping Site</h1>
            <small>A Site For <span style="color: darkred">Developers</span>
                < />
            </small>
        </div>
        <center>
            <button class="white-card-box" onclick="window.location.href='login'">
                Login
            </button>
            <button class="white-card-box" onclick="window.location.href='register'">
                Register
            </button>
        </center>
    </div>
    <footer>
        <center>
            <div class="footer-text">Facebook   |   Twitter   |   Instagram</div>
        </center>
    </footer>
</body>

</html>