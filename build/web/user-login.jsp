<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!doctype html>
<html class="no-js" lang="">
    <head>


        <title>Parking House-Login Page</title>


<!--        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">-->

        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <link
            href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
            rel='stylesheet' type='text/css'>

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
                align-items: center;
            }
            .navbar li {
                position: relative;
                padding: 10px 0 10px 28px;
            }
            .navbar a, .navbar a:focus {
                display: flex;
                align-items: center;
                justify-content: space-between;
                font-family: "Raleway", sans-serif;
                font-size: 20px;
                font-weight: 600;
                color: #888888;
                white-space: nowrap;
                transition: 0.3s;
                position: relative;
            }
            .navbar a i, .navbar a:focus i {
                font-size: 12px;
                line-height: 0;
                margin-left: 5px;
            }
            .navbar > ul > li > a:before {
                content: "";
                position: absolute;
                width: 0;
                height: 2px;
                bottom: -5px;
                left: 0;
                background-color: #34b7a7;
                visibility: hidden;
                width: 0px;
                transition: all 0.3s ease-in-out 0s;
            }
            .navbar a:hover:before, .navbar li:hover > a:before, .navbar .active:before {
                visibility: visible;
                width: 25px;
            }
            .navbar a:hover, .navbar .active, .navbar .active:focus, .navbar li:hover > a {
                color: #222222;
            }
            .navbar .dropdown ul {
                display: block;
                position: absolute;
                left: 14px;
                top: calc(100% + 30px);
                margin: 0;
                padding: 10px 0;
                z-index: 99;
                opacity: 0;
                visibility: hidden;
                background: #fff;
                box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
                transition: 0.3s;
                border-radius: 4px;
            }
            .navbar .dropdown ul li {
                min-width: 200px;
                padding: 0;
            }
            .navbar .dropdown ul a {
                padding: 10px 20px;
                font-size: 15px;
                text-transform: none;
                font-weight: 600;
            }
            .navbar .dropdown ul a i {
                font-size: 12px;
            }
            .navbar .dropdown ul a:hover, .navbar .dropdown ul .active:hover, .navbar .dropdown ul li:hover > a {
                color: #34b7a7;
            }
            .navbar .dropdown:hover > ul {
                opacity: 1;
                top: 100%;
                visibility: visible;
            }
            .navbar .dropdown .dropdown ul {
                top: 0;
                left: calc(100% - 30px);
                visibility: hidden;
            }
            .navbar .dropdown .dropdown:hover > ul {
                opacity: 1;
                top: 0;
                left: 100%;
                visibility: visible;
            }
            @media (max-width: 1366px) {
                .navbar .dropdown .dropdown ul {
                    left: -90%;
                }
                .navbar .dropdown .dropdown:hover > ul {
                    left: -100%;
                }
            }
            h3{
                font-size: 30px;
                margin-left: 30%;
            }
        </style>

    </head>
    <body style="background-image: url(images/V.jpg); background-size: 1000px; background-repeat: no-repeat; background-size: cover;">
      <div class="d-flex justify-content-between align-items-center">


            <!--
            
            <main>
            
               main {
                   height: 100vh;
                 }
            
            main nav {
            height: 10vh;
            }
            
            main .main-content {
            background: linear-gradient(rgba(0, 0, 0, 0,5), rgba(0, 0, 0, 0,5), rgba(0, 0, 0, 0,5)), url('./images/.jpg')
            height: 90vh;
            position: absolute;
            }
            
            main .main-contnt div {
               top: 50%;
               left: 50%;
               transform: translate(-50%, -50%);
            }
            
               <nav>
               </nav>
               <main-content>
               </main-content>
            </main>
            
            <section id="">
            
            </section>
            
            <footer>
            </footer>
            
            
            
            
            
            
            //styles
            
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
:root {
       --main-color: #f0544f;
       }
            -->


            <!--<nav id="navbar" class="navbar order-last order-lg-0">
            <!--<h1 class="logo me-auto me-lg-0" style="align-items: center;">
                ParkingHouse</h1>
            <img src="images/parkingHouseLogo.png" alt=""/>
            <ul>

                <li><a href="index.jsp">Home</a></li>

                <li><a href="user-login.jsp">User Login</a></li>
                <li><a href="admin-login.jsp">Admin Login</a></li>

            </ul>

            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>-->
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="images/parkingHouseLogo.png" alt="" width="100" height="100" class="d-inline-block align-text-top">
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
                                <a class="nav-link" href="admin_login.jsp">Admin</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <div class="sufee-login d-flex align-content-center flex-wrap ">
            <div class="container width-100">
                <div class="login-content">
                    <div class="login-logo">
                        <a href="index.jsp">
                            <h4 style="color: #FFFFFF">Welcome To Parking House</h4>
                        </a>
                    </div>
                    <div class="login-form"  style="border-radius: 5px">
                        <p>
                            <%
                                String message = (String) session.getAttribute("message");
                                if (message != null) {
                                    session.removeAttribute("message");
                            %>

                        <h6>
                            <center>Invalid Username and Password, try again.</center>
                        </h6>
                        <%
                            }
                        %>
                        </p>
                        <form action="UserLogin" method="post" >
                            
                             <div>
                                <label class="pull-left"><a href="index.jsp">Home
                                        Page</a></label> <label class="pull-right"><a
                                        href="user-register.jsp">Sign Up Here</a></label>
                            </div>
                            <br>
                            <br>
                            <div class="form-group">
                                <label>Email</label> 
                                <input class="form-control" type="email"
                                       placeholder="Email" required="true" name="email">
                            </div>
                            
                            <div class="form-group">
                                <label>Password</label> 
                                <input type="password"
                                       class="form-control" name="password" placeholder="Password"
                                       required="true">
                            </div>

                           
                            <br> 
                            <button type="submit" name="login"
                                    class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
                            <br>
                            <br>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script
        src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
