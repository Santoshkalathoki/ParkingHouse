<%-- 
    Document   : booknow
    Created on : Mar 14, 2022, 12:39:27 PM
    Author     : SantoshKalathoki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

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

        </style>
    </head>
    <body>
        <%
            if (session.getAttribute("email") != null && session.getAttribute("email") != "") {
        %>
        <jsp:include page="includes/user-sidebar.jsp"></jsp:include>

        <jsp:include page="includes/header.jsp"></jsp:include>
            <div class="container">
                <div class="content">
                    <div class="animated fadeIn">


                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card"></div>
                                <!-- .card -->

                            </div>
                            <!--/.col-->
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Add </strong> Vehicle
                                    </div>
                                    <p>
                                    <%
                                        String message = (String) session.getAttribute("message");
                                        if (message != null) {
                                            session.removeAttribute("message");
                                    %>

                                <h6>
                                    <center>Your parking slot is booked.Please park your vehicle</center>
                                </h6>
                                <%
                                    }
                                %>
                                </p>

                                <div class="card-body card-block">
                                    <form action="AddVehicle" method="post">
                                        <p style="font-size: 16px; color: red" align="center">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="select" class=" form-control-label">Select</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <select name="catename" id="catename" class="form-control">
                                                    <option value="0">Select Category</option>


                                                </select>
                                            </div>
                                        </div>




                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">Vehicle
                                                    Number</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="vehreno" name="vehreno"
                                                       class="form-control" placeholder="Vehicle Number"
                                                       required="true">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">Owner
                                                    Name</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="ownername" name="ownername"
                                                       class="form-control" placeholder="Owner Name" required="true">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">Owner
                                                    Contact Number</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="ownercontno" name="ownercontno"
                                                       class="form-control" placeholder="Owner Contact Number"
                                                       required="true" maxlength="10" pattern="[0-9]+">
                                            </div>
                                        </div>
                                        <p style="text-align: center;">
                                            <button type="submit" class="btn btn-primary btn-sm"
                                                    name="submit">Add</button>
                                        </p>
                                    </form>
                                </div>

                            </div>

                        </div>
                        <div class="col-lg-6"></div>
                    </div>
                </div>
                <!-- .animated -->
            </div>



            <%
                } else {
                    response.sendRedirect("user-login.jsp");
                }
            %>
    </body>
</html>
