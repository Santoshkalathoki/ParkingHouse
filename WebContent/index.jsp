<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!doctype html>
<html class="no-js" lang="">
    <head>
        <title>Parking House</title>
        <style>

            .navbar {
                padding: 0;
                background-color: lightblue;
                height: 100px;
                width: 100%;
            }

            .navbar ul {
                margin-left: 10px;
                padding: 0;
                display: flex;
                list-style: none;
                font-weight: bold;

                align-items: center;
            }
            .navbar li {
                position: relative;
                padding: 10px 0 10px 28px;
            }


            #footer{

                background-color: lightblue;
                text-align: center;
            }
            #footer .credits {
                padding-top: 5px;
                font-size: 15px;
            }
            #footer .credits a {
                color: #34b7a7;
            }

            .animation h2{
                margin-top: 20%;
                color: aqua;
                margin-left: 5%;
                overflow: hidden;
                white-space: nowrap;
                animation: text 6s steps(15) infinite alternate;
                font-family: "Gill Sans Extrabold", sans-serif;
                border-right: 3px solid black;
                font-size: 60px;
                font-weight: bold;
                padding-left: 200px;
            }
            @keyframes text{
                0%{
                    width: 0ch;
                }
                50%{
                    width: 30ch;
                }
            }

        </style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(images/V.jpg); background-repeat: no-repeat; background-size: cover; ">
    <body>
        <div class="d-flex justify-content-between align-items-center">



            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="images/parkingHouseLogo.png" alt="" width="100" height="5%" class="d-inline-block align-text-top">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav me-2">
                            <li class="nav-item">
                                <a class="nav-link" href="user-login.jsp">User Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin-login.jsp">Admin</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div style="position: relative;height: 90vh;">
            <div>
                <div class="animation">
                    <h2> Welcome To Parking House</h2>
                </div>



            </div>
        </div>


        <footer id="footer">
            
                <div class="copyright">
                    &copy; Copyright <strong><span>Parking House</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed by Santosh Kalathoki
                </div>
            
        </footer>
    </body>
</html>
